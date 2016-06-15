
class AvoidPower < PowerInterface
	def usePower
		@avoid = @avoid + 0.05
		if @avoid >0.8
			@avoid = @avoid - 0.04
		end
	end
		puts("Avoid chance increased")
	
end

