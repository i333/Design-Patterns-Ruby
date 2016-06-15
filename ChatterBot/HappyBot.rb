class HappyBot < ChatterTemplate
	
	def initialize(user)

		@user = user
		
		startBot("chatter.txt")
	
	end

end