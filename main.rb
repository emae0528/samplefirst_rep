require './uav.rb'
require './flight.rb'
require './flight_path.rb'
require './location.rb'

u1 = Uav.new("happy", "123")
u2 = Uav.new("Sheryll", "456")
u3 = Uav.new("Hannah", "789")

l1 = Location.new("hannah","nueva ecija")
l2 = Location.new("sheryll","munoz")

f1 = Flight.new(nil, nil, nil)

uav_container = []
uav_container << u1
uav_container << u2
uav_container << u3

location_container = []
location_container << l1
location_container << l2

flight_container = []
flight_container << f1

uav_container.each do |ua|
	puts "UAV Name: #{ua.name}"
	puts "Code: #{ua.code}"
end

location_container.each do |ll|
	puts "Location Name: #{ll.name}"
	puts "Description: #{ll.description}"
end


puts "Enter Flight's name: "
flight_name = gets
puts "Choose UAV Name: "
uav_input = gets
puts "Location Name: "
location_input = gets

uav_container.each do |ua|
	if ua.name == uav_input.chomp
		f1.uav = ua
	end
end

location_container.each do |ll|
	if ll.name == location_input.chomp
		f1.location = ll
	end
end

f1.name = flight_name

puts "Name: #{f1.name}"
puts "UAV: #{f1.uav.name}"
puts "UAV: #{f1.location.name}"

puts "Enter Number: "
num = gets

flightpath_container = []


num.to_i.times do
	puts "Enter lon."
	lon_num = gets
	puts "Enter lat."
	lat_num = gets

	fp1 = Flight_Path.new(f1,lon_num,lat_num)
	flightpath_container << fp1
end

flightpath_container.each do |fff|
	puts fff.flight.name
	puts fff.lon
	puts fff.lat
end



