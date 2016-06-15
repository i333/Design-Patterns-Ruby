require "net/http"
require 'json'
require_relative"ProxyInterface"
class LocationProxy < ProxyInterface

	def initialize(api)
		@api = api
		@apiObject = api.getObject
		if  @apiObject== false
			puts "invalid ip"
			
			return
		end
		begin
			url = "http://ip-api.com/json/"+@apiObject
		den = Net::HTTP.get(URI(url))
		@data = JSON.load den
		@apiObject = @data["city"]
		rescue 
			puts "Network Connection Failed at LocationProxy"
			@apiObject = false
		end
		
	end
		
	def getContent
		if @apiObject==false
			puts "unable to receive content of LocationProxy"
		else
		@api.getContent
		puts "city:" +@data["city"]
		end
	end

end
