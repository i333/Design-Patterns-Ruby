require "net/http"
require 'json'
require_relative"ProxyInterface"
class IPProxy < ProxyInterface 

	def initialize

		begin #Checks the URL 
		ip = Net::HTTP.get(URI("https://api.ipify.org?format=json"))

		@data = JSON.load ip
		#puts "My public IP Address is: " + @data["ip"]
		@apiObject = @data["ip"]
		rescue
			puts "Network Connection Failed at IPProxy"
			@apiObject = false

		end
	end
	def getContent
		if @apiObject==false
			puts "unable to receive content of IPProxy"
		else
				
		puts "IP: " +@data["ip"]
		end
	end

end

