class MatchedResponse
	def respond(string,keys)
		sortedArray = keys.keys.sort_by(&:length).reverse
		sortedArray.each do |keyword|
			if string.include? keyword
				randNum = rand(keys[keyword].size)
				puts( keys[keyword][randNum])
				return
			end

		end
	end
end