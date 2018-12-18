from naoqi import ALProxy

# Set here your robot's IP.
ip = "<your_robot_ip_address>"

navigationProxy = ALProxy("ALNavigation", ip, 9559)

# No specific move config.
navigationProxy.moveTo(1.0, 0.0, 0.0)
navigationProxy.moveTo(1.0, 0.0, 0.0, [])

# To do 6 cm steps instead of 4 cm.
navigationProxy.moveTo(1.0, 0.0, 0.0, [["MaxStepX", "0.06"]])

# Will stop at 0.5m (FRAME_ROBOT) instead of 0.4m away from the obstacle.
navigationProxy.setSecurityDistance(0.5)
