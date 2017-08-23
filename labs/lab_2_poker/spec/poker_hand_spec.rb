require 'rspec'
require 'poker_hand'

describe 'valid hand' do
  it 'all cards have a valid suit' do
    hand1 = poker_hand.new(%w(2C 3H 4S 8C AH))
    hand2 = poker_hand.new(%w(2T 3A 5S 8L 10H))
    expect(poker_hand.validate_suits(hand1)).to be true
    expect{poker_hand.validate_suits(hand2)}.to raise_error("Cards have invalid suits!")
  end
  it 'all cards have a valid value' do
    hand1 = poker_hand.new(%w(2C 3H 4S 8C AH))
    hand2 = poker_hand.new(%w(DC 25H TS VC 0H))
    expect(poker_hand.validate_values(hand1)).to be true
    expect{poker_hand.validate_values(hand2)}.to raise_error("Cards have invalid values!")
  end
  it 'has 5 cards' do
    hand1 = poker_hand.new(%w(2C 3H 4S 8C AH))
    hand2 = poker_hand.new(%w( 2C 3H 4S))
    hand3 = poker_hand.new(%w( 2C 3H 4S 2C 3H 4S 8C AH))
    expect(poker_hand.validate_size(hand1)).to be true
    expect{poker_hand.validate_size(hand2)}.to raise_error("Hand has too few cards!")
    expect{poker_hand.validate_size(hand3)}.to raise_error("Hand has too many cards!")
  end
end