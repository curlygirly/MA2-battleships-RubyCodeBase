require 'ship'

describe Ship do

  xit 'knows its type' do
    ship = Ship.new :destroyer
    expect(ship.type).to eq :destroyer
  end

  xit 'size of the destoyer equal 2' do
    ship = Ship.new :destroyer
    expect(ship.size).to eq 2
  end
  xit 'size of cruiser equal 3' do
    ship = Ship.new :cruiser
    expect(ship.size).to eq 3
  end


end