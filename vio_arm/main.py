import vioBridge
import ikrobot
import threading

threading.Thread(target = ikrobot.solveMyIK).start()
threading.Thread(target = vioBridge.spinLCM).start()






