class Person
	@PowerInterface
	attr_accessor :isKilled
	

	def initialize
		@PowerInterface = StrenghtPower.new()
		@PowerInterface.setStatus(10,2,0.05)
		@isKilled = false
	end
	def getAttack
		@PowerInterface.getAttack
	end
	def avoidChance
		@PowerInterface.avoid
	end
	def setHealth(newHealth)
		@PowerInterface.setHealth(newHealth)
	end
	def getHealth
		@PowerInterface.health
	end
	def usePower
		@PowerInterface.usePower
	end
	def acquirePower(power)
		lastHealt = @PowerInterface.getHealth
		lastAttack = @PowerInterface.getAttack
		lastAvoid = @PowerInterface.getAvoid
		@PowerInterface = power 
		@PowerInterface.setStatus(lastHealt,lastAttack,lastAvoid)
	end
	def seeStatus
		@PowerInterface.seeStatus()
	end

end