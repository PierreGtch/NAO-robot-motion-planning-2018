

class NaoqiInterpolation:

    def __init__(self, motionProxy, effector, space, axisMask):
        self.motionProxy = motoionProxy
        self.effector = effector
        self.space = space
        self.axisMask = axisMask

    def send(self, time, path):
        self.motionProxy.positionInterpolation(
            self.effector,
            self.space,
            path,
            self.axisMask,
            time,
            isAbsolute=True,
        )
