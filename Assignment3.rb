
require_relative "APIs"
require_relative "IPApi"
require_relative "LocationApi"
require_relative "WeatherApi"




weather=WeatherApi.new(LocationApi.new(IPApi.new()))
weather.GetINFO()
