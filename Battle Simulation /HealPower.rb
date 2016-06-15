class HealPower < PowerInterface
	def usePower
		@health = @health + 1
		if @health < 3
			@health = @health +0.5
		end
		puts(" health increased ")
	
	end
end