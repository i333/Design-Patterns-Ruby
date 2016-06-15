require "net/http"
require 'json'
require_relative"ProxyInterface"
class WeatherProxy < ProxyInterface

	def initialize(api)
		@api = api
		@apiObject = api.getObject()
		if @apiObject == false
			puts "invalid ip"
			
			return
		end 
		begin

		url = "http://api.openweathermap.org/data/2.5/weather?q="+@apiObject+"&APPID=8f9efd90a1281fb3ad7c575ecbfa51de"
		den = Net::HTTP.get(URI(url))
		@data = JSON.load den
		@weather =  @data["weather"]
		rescue
			puts "Network Connection Failed at WeatherProxy"
			
		end
		
	end
		
	def getContent
		if @apiObject==false
			puts "unable to receive content of WeatherProxy"
		else
		@api.getContent
		puts "Weather : " +@weather[0]["description"]
		end
	end

end


