class Listing
  attr_reader :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end

  def trips
    Trip.all.select { |trip| trip.listing == self}
  end

  def guests
    self.trips.map { |trip| trip.guest }
  end

  def trip_count
    Trips.all.trips.count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    Trip.all.select { |trip| trip.city == city}
  end

  def self.most_popular
    trip = Trip.all.sort_by{|listing| Trip.all.count(listing.listing)}
    trip[-1].listing.city
  end

end
