class SadBot < ChatterTemplate
	#include Observer # henuz tanimlanmadi 
	def initialize (user)
		@user = user
		
		startBot("SadChatter.txt")


	
	end
	def introduction
				puts "Hello I am SadBot, my cat just died I am so Sad"
		
	end
end
