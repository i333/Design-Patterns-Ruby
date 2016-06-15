class AvoidResponse
	def respond(string,keys)
		randNum = rand( keys["change subject"].size)

		puts( keys["change subject"][randNum])

	end
end