feature '' do
  scenario 'place a ship in a board location' do
    board = Board.new
    board.place_ship 'a3'
    expect(board.lookup('a3')).to eq 'ship'
  end
end