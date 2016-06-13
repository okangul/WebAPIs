 require_relative "LocationApi"
require_relative "APIs"

class WeatherApi< APIs

	def initialize(location1)
		@location1=location1
		@weather
	end

	def GetINFO()
		begin
		weather_info = Net::HTTP.get(URI("http://api.openweathermap.org/data/2.5/weather?q="+@location1.GetINFO+ "&units=metric&appid=2de143494c0b295cca9337e1e96b00e0"))
 		@weather=JSON.parse(weather_info)
		puts "Your weather is: " + @weather["main"]["temp"].to_s + " Celsius Degree"
		@weather["main"]["temp"].to_s
		rescue
			puts "Your weather is: Sunny "

		end


	end

end