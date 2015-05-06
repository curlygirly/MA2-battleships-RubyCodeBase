require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(1).argument }
  it { is_expected.to respond_to(:lookup).with(1).argument }

  xit 'should be 10 x 10' do
    board = Board.new
    expect(board.size).to eq 10
  end

  xit 'can have a ship placed in the first square A1' do
    expect(subject.lookup('a1')).to eq nil
    subject.place_ship 'a1'
    expect(subject.lookup('a1')).to eq 'ship'
  end

  xit 'should convert "a3" into 0,2' do
    board = Board.new
    expect(board.wrapper('a3')).to eq [0,2]
  end

end