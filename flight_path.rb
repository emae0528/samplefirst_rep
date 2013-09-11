class Flight_Path
	attr_accessor :flight, :lon, :lat

	def initialize(flight,lon, lat)
		@flight = flight
		@lon = lon
		@lat = lat
	end
end