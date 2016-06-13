require_relative "IPApi"
require_relative "APIs"

class LocationApi< APIs

	def initialize(ip)
		@ip=ip
		@location
	end

	def GetINFO()
		begin
		location_info = Net::HTTP.get(URI("http://ip-api.com/json/"+@ip.GetINFO))
 		@location=JSON.parse(location_info)
		puts "Your location is: " + @location["country"]+"  "+ @location["city"]
		@location["city"]
		rescue
			puts "Your location is: Binghamton" 
			return 'binghamton'

		end

	end

end