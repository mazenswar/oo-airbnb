require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
### (guest, listing, trip_duration)
guest1 = Guest.new("Gizmo")
guest2 = Guest.new("Maz")

listing1 = Listing.new("Las Vegas")
listing2 = Listing.new("Manama")

trip1 = Trip.new(guest1, listing2, 1)
trip2 = Trip.new(guest1, listing1, 20)
trip3 = Trip.new(guest2, listing1, 10)
trip4 = Trip.new(guest2, listing2, 30)
trip5 = Trip.new(guest2, listing1, 15)




# Put your variables here~!
binding.pry
"Byeeeeee!"
