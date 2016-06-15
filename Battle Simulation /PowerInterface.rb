class PowerInterface
	attr_accessor :health,:avoid,:attack
	def setStatus(health,attack,avoid)
		@health = health
		@attack = attack
		@avoid	= avoid
	end
	def usePower 
		puts(" use power method is not implemented")
	end
	def seeStatus
		puts("Attack = " + @attack.to_s)
		puts("Health = " + @health.to_s)
		puts("Avoid chance = " + @avoid.to_s)

	end
	def getHealth
		return @health
	end
	def setHealth(newHealth)
		@health = newHealth
	end
	def getAttack
		return @attack
	end
	def getAvoid
		return @avoid
	end
end