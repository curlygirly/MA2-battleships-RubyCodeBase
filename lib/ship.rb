class Ship

  attr_reader :size, :type

  TYPES = {
    aircraftcarrier: 5,
    battleship: 4,
    cruiser: 3,
    destroyer: 2,
    submarine: 1

  }

  def initialize ship_type
    @size = TYPES[ship_type]
    @type = ship_type
  end
end