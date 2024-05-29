#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# SPDX-License-Identifier: Apache-2.0
# Copyright 2022 Stéphane Caron

"""Kinova Gen2 arm tracking a moving target."""
import os

import pinocchio

import bridge
import numpy as np
import lcm

import pink
import qpsolvers
from loop_rate_limiters import RateLimiter
from pink import solve_ik
from pink.tasks import FrameTask, PostureTask
from pink.utils import custom_configuration_vector
from pink.visualization import start_meshcat_visualizer
#from lcmTypes import rosCommand_t
from lcmTypes.posCmd_t import posCmd_t
import meshcat_shapes
def lcmOut(q):
    msg = posCmd_t()
    for i in range(7):
        msg.jointTarget[i] = q[i]*57.29

    lc = lcm.LCM()
    lc.publish("Amber_PosCmd", msg.encode())

def solveMyIK():

    urdf_path = os.path.join(
        os.path.dirname(__file__),
        "amber_l1",
        "amber_l1.urdf",
        # "amber_b1.urdf",
    )
    robot = pinocchio.RobotWrapper.BuildFromURDF(
        filename=urdf_path,
        package_dirs=["."],
        root_joint=None,
    )
    viz = start_meshcat_visualizer(robot)

    end_effector_task = FrameTask(
        "seven_Link",
        position_cost=1.0,  # [cost] / [m]
        orientation_cost=0.0,  # [cost] / [rad]
    )

    posture_task = PostureTask(
        cost=1e-3,  # [cost] / [rad]
    )

    tasks = [end_effector_task, posture_task]

    q_ref = custom_configuration_vector(
        robot,
    )
    configuration = pink.Configuration(robot.model, robot.data, q_ref)
    for task in tasks:
        task.set_target_from_configuration(configuration)
    viz.display(configuration.q)

    viewer = viz.viewer
    meshcat_shapes.frame(viewer["end_effector_target"], opacity=0.5)
    meshcat_shapes.frame(viewer["end_effector"], opacity=1.0)

    # Select QP solver
    solver = qpsolvers.available_solvers[0]
    if "quadprog" in qpsolvers.available_solvers:
        solver = "quadprog"

    rate = RateLimiter(frequency=100.0)
    dt = rate.period
    t = 0.0  # [s]
    while True:
        # Update task targets
        end_effector_target = end_effector_task.transform_target_to_world
        end_effector_target.translation[0] = bridge.now.position[0]
        end_effector_target.translation[2] = bridge.now.position[1]
        end_effector_target.translation[1] = bridge.now.position[2]
        end_effector_target.rotation[0]= 0*bridge.now.rotation[0]
        end_effector_target.rotation[1]= 0*bridge.now.rotation[1]
        end_effector_target.rotation[2]= 0*bridge.now.rotation[2]

        # Update visualization frames
        viewer["end_effector_target"].set_transform(end_effector_target.np)
        viewer["end_effector"].set_transform(
            configuration.get_transform_frame_to_world(
                end_effector_task.body
            ).np
        )

        # Compute velocity and integrate it into next configuration
        velocity = solve_ik(configuration, tasks, dt, solver=solver)
        configuration.integrate_inplace(velocity, dt)

        # Visualize result at fixed FPS
        viz.display(configuration.q)

        lcmOut(configuration.q.tolist())
        rate.sleep()
        t += dt
