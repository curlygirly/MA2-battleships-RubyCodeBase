require 'ship'

class Board

  attr_accessor :grid

  def initialize
    @grid =array
  end

  def place_ship(coordinates)

  end

  def lookup(coordinates)
    'ship'
  end

  def wrapper(coordinates)
    # location a3
    # alphabet = []
    # x,y = a3.chars
    # row = alphabet.index(x)
    # col = y - 1
    # output = [row,col]
    # output
  end

  def size
    self.grid.count
  end

end

board = Board.new
puts board.wrapper('a3').inspect
puts board.wrapper('d1').inspect