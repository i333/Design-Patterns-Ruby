
require "observer"
class User 
include Observable  
	def talk()
		while (count_observers()!= 0)
		changed
		notify_observers(self)
	end
	end

	
end