class Guest
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def trip
    Trip.all.select{|trip| trip.guest == self}
  end

  def listings
    self.trip.map{|trip| trip.listing }
  end

  def trip_count
    self.trip.count
  end

  def self.all
    @@all
  end

  def self.pro_traveler
    self.all.select{ |guest| guest.trip_count > 1 }
  end

  def self.find_all_by_name(guest_name)
    self.all.select{|guest| guest.name == guest_name}
  end

###
end
