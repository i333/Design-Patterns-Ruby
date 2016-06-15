class ReaderBot < ChatterTemplate	# Just to read the script no introduction is required
	
	def initialize (user)
		
		@user = user
		
		readFromFile("chatter.txt")

	end

end