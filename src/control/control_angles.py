from kinematics.inverse_kinematics import NaoInverseKinematics
from interpolation_py2 import interpolate_nd

class NaoControlAngles:
	
	def __init__(self, motionProxy):
		self.motionProxy = motionProxy
		self.inverter = NaoInverseKinematics()
		self.poly_deg = 3

	def send(self, time, path):
		pass
		# self.motionProxy.anglesInterpolation()
		trajectory = interpolate_nd(time, path, d=self.poly_deg)
		
		trajectory_derivative = interpolate_nd(time, path, d=self.poly_deg)
		duration = t[-1]-t[0]
		angles = self.inverter.compute(trajectory, trajectory_derivative, duration)
