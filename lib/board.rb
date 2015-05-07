require_relative 'ship'

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(10) {Array.new(10)}

  end

  def place_ship(ship_type, coordinates, direction)
    row, col = self.wrapper(coordinates)
    @grid[row][col] = ship



    if direction == 'horizontal'
      (row...(row + ship_type.size)).to_a.each do |row_coordinate|
        row_and_col = (col + row_coordinate.to_s).to_sym
        grid[row_and_col] = ship
      #ship_type.size.times do |index|
        #@grid[[row.replace(index)][col]] ='ship'
      end
    end
  end


  def lookup(coordinates)
    row, col = self.wrapper(coordinates)
    @grid[row][col]
  end

  def wrapper(coordinates)
    alphabet = ('a'..'z').to_a
    row, col = coordinates.split(//,2)
    @array = alphabet.index(row), col.to_i - 1
  end

  def size
    self.grid.count
  end

end