class Mage < Person
	def initialize
		super()
		@PowerInterface.setStatus(10,2,0.15)
	end
end