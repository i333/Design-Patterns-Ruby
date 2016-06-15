class StrenghtPower < PowerInterface
	def usePower
		@attack = @attack +1 
		if (@attack > 8)
			@attack = @attack - 0.85
		end

		puts(" attacking power increased")
	end
end