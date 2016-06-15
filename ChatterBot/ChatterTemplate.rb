
class ChatterTemplate 
	@endConversation
	@lastResponse
	@keys
	def initialize 
		raise "this is an abstract class"
	end
	def introduction
		puts "Hello #{@keys["your name"][0]}"
	end

	def startBot(filename)

		if(readFromFile(filename))
		@user.add_observer(self)
		introduction()
		update(@user)
		end
	end
	def update(user) 
		@user = user
		puts("response to #{self.class.name} :")
		@lastResponse = gets()
		makeDecision(@lastResponse)
		
	end
	def readFromFile(file)
		if (File.file? (file))
		fileObj = File.open(file, "r")
		@keys =Hash.new
		@Strategy = RespondStrategy.new
		while (line = fileObj.gets)
			if(line.include? ":" )
			question,values = line.split(":")
			valueArray = values.strip.split(";")	
			@keys[question]=valueArray

			end

		end
		fileObj.close
		return true
		else
			puts("#{file} does not exist")
			return false
		end


	end

	def makeDecision(userInput)
		userInput = userInput.downcase
		hasKey = false
		keysArray = @keys.keys
		keysArray.each do |key|
			if userInput.include? key
				hasKey = true		
				break		#to prevent unnecessary loops
			end
		end
		if hasKey 
			myStrategy = MatchedResponse.new()
			
			@Strategy.respond(userInput,@keys,myStrategy)
			return
		end
		if userInput.include? "?"  # checks whole string not the last character
			myStrategy = QuestionResponse.new()
			@Strategy.respond(userInput,@keys,myStrategy)
			return
		end
		if userInput.split.size <2
			myStrategy = EndResponse.new()
			#myStrategy.respond(userInput,@keys)
			@Strategy.respond(userInput,@keys,myStrategy)
			endConversation()
			return
		end
			myStrategy = AvoidResponse.new()
			@Strategy.respond(userInput,@keys,myStrategy)

		
	end
	def endConversation 
		@user.delete_observer(self)
	end
	
end



