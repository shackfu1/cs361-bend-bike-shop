!# /usr/bin/env ruby

require_relative 'bike'

bike_cargo = Cargo.new()
bike = Bike.new(1, :pink, 99.99, bike_cargo)

bike_cargo.add_cargo(:apples)
bike_cargo.add_cargo(:water)
bike_cargo.add_cargo(:repair_kit)

puts "Space for #{bike_cargo.pannier_remaining_capacity} items left."

bike.rent!
