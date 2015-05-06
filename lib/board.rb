require_relative 'ship'

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(10) {Array.new(10)}
  end

  def place_ship(coordinates)
    row, col = self.wrapper(coordinates)
    @grid[row][col] = 'ship'
  end

  def lookup(coordinates)
    row, col = self.wrapper(coordinates)
    @grid[row][col]
  end

  def wrapper(coordinates)
    alphabet = ('a'..'z').to_a
    row, col = coordinates.split(//,2)
    @array = alphabet.index(row), col.to_i - 1
    @array
  end

  def size
    self.grid.count
  end

end

board = Board.new
puts board.wrapper('a3').inspect
puts board.wrapper('d1').inspect
puts board.lookup('a1').inspect
board.place_ship('a1')
puts board.lookup('a1').inspect