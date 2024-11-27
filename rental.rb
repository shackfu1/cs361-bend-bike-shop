class Rental

  attr_reader :bike
  attr_reader :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end

  def price
    bike_price + (bike_weight * 2) + (luggage_items.count * 2)
  end

  def weight
    bike_weight + luggage_items.count
  end

  def bike_weight()
    self.bike.weight
  end

  def bike_price()
    self.bike.price
  end

  def luggage_items()
    self.luggage.items
  end

end
