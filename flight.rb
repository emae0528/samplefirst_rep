class Flight
	attr_accessor :name, :uav, :location

	def initialize(name, uav, location)
		@name = name
		@uav = uav
		@location = location
	end
end