class Trip
  @@all = []

  attr_accessor :guest, :listing, :trip_duration

  def initialize(guest, listing, trip_duration)
    @guest = guest
    @listing = listing
    @trip_duration = trip_duration
    @@all << self
  end

  def listing
    @listing
  end

  def guest
    @guest
  end

  def self.all
    @@all
  end

end
