
require_relative "ChatterTemplate"
require_relative "RespondStrategy"
require_relative "MatchedResponse"
require_relative "AvoidResponse"
require_relative "EndResponse"
require_relative "QuestionResponse"
require_relative "User"
require_relative "HappyBot"
require_relative "SadBot"
require_relative "ReaderBot"

require "observer"

user = User.new()
if (File.file? ("script.txt"))
fileObj = File.open("script.txt", "r")
array = Array.new 
while (line = fileObj.gets)
	array.push(line)

end
fileObj.close
chatter = ReaderBot.new(user)

i = 0 
size = array.count
puts(size)
	array.each {|i|
		puts(i)
		chatter.makeDecision(i)
		
}

else
	puts("script.txt does not exist")
end



user = User.new()
chatter = HappyBot.new(user)
sadChatter = SadBot.new(user)
user.talk

