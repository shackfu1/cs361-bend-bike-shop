# Bike

class Cargo
  MAX_CARGO_ITEMS = 10

  attr_accessor :MaxItems, :cargo_contents

  def initialize()
    @MaxItems = MAX_CARGO_ITEMS
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def cargo_size()
    self.cargo_contents.size
  end

  def pannier_remaining_capacity()
    self.MaxItems - self.cargo_size()
  end

  def pannier(pannier_remaining_capacity)
    self.MaxItems
  end
end

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :rented

  def initialize(id, color, price, cargo, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = cargo
  end

  def rent!
    self.rented = true
  end
end
