from lcmTypes import vio_cartesian_t
import bridge
import lcm
import numpy as np
import math

def isRotationMatrix(R):
    Rt = np.transpose(R)
    shouldBeIdentity = np.dot(Rt, R)
    I = np.identity(3, dtype=R.dtype)
    n = np.linalg.norm(I - shouldBeIdentity)
    return n < 1e-6


def rot2euler(R):
    #assert (isRotationMatrix(R))

    sy = math.sqrt(R[0, 0] * R[0, 0] + R[1, 0] * R[1, 0])

    singular = sy < 1e-6
    R = np.rot90(R)
    R = np.rot90(R)
    if not singular:
        x = math.atan2(R[2, 1], R[2, 2]) * 180 / np.pi
        y = math.atan2(-R[2, 0], sy) * 180 / np.pi
        z = math.atan2(R[1, 0], R[0, 0]) * 180 / np.pi
    else:
        x = math.atan2(-R[1, 2], R[1, 1]) * 180 / np.pi
        y = math.atan2(-R[2, 0], sy) * 180 / np.pi
        z = 0

    #if not singular:
    #    x = math.atan2(R[1, 2], R[2, 2]) * 180 / np.pi
    #    y = math.atan2(-R[0, 2], sy) * 180 / np.pi
    #    z = math.atan2(R[0, 1], R[0, 0]) * 180 / np.pi
    #else:
    #    x = math.atan2(-R[2, 1], R[1, 1]) * 180 / np.pi
    #    y = math.atan2(-R[0, 2], sy) * 180 / np.pi
    #    z = 0
    return np.array([x, y, z])






def my_handler(channel, data):
    msg = vio_cartesian_t.decode(data)
    #print(msg.pos)
    #print (msg.rot)
    #print(rot2euler(np.array(msg.rot)))
    #rot = rot2euler(np.array(msg.rot)).tolist()
    #if (msg.pos[0] == 0 and msg.pos[1] == 0 and msg.pos[2] == 0):
    #    for i in range(3):
    #        bridge.absolute.position[i] = bridge.now.position[i]
    #        if(bridge.absolute.position[i]> 0.8):
    #            bridge.absolute.position[i] = 0.8
    #        if (bridge.absolute.position[i] < -0.8):
    #            bridge.absolute.position[i] = -0.8
    #        bridge.absolute.rotation[i] = bridge.now.rotation[i]
    #        if (bridge.absolute.position[i] > 120):
    #            bridge.absolute.rotation[i] = 120
    #        if (bridge.absolute.position[i] < -120):
    #            bridge.absolute.rotation[i] = -120
    for i in range(3):
        bridge.now.position[i] = msg.pos[i]+bridge.absolute.position[i]
        bridge.now.rotation[i] = msg.rot[i]+bridge.absolute.rotation[i]
    #print(bridge.now.position[0], bridge.now.position[1], bridge.now.position[2])




def spinLCM():
    lc = lcm.LCM()
    subscription = lc.subscribe("vio_out", my_handler)

    try:
        while True:
            lc.handle()
    except KeyboardInterrupt:
        pass
