require './harry_potter.rb'

describe HarryPotter do
  it 'cost 8 for one book' do
    expect(subject.calc_price(1,0,0,0,0)).to eq 8
  end

  it 'cost 16 for 2 of the same book' do
    expect(subject.calc_price(2,0,0,0,0)).to eq 16
  end

end
