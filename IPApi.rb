require "net/http"
require "JSON"
require_relative "APIs"

class IPApi< APIs

	def initialize()
 		@ip
 	end

 	def GetINFO()
 		begin
 		ip_info = Net::HTTP.get(URI("https://api.ipify.org?format=json"))
 		@ip=JSON.parse(ip_info)
		puts "My public IP Address is: " + @ip["ip"]
		@ip["ip"]
		rescue
			puts "You lost your connection default informations coming up"
			puts "Your public IP Address is: 149.125.34.118" 
			return '149.125.34.118'

		end
 	end


end





 	

