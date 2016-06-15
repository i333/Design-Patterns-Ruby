require_relative"IPProxy"
require_relative"LocationProxy"
require_relative"WeatherProxy"
require_relative"ProxyInterface"

as = WeatherProxy.new(LocationProxy.new(IPProxy.new()))
as.getContent