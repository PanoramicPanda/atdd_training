require 'rspec'
require 'poker_hand'

describe 'valid hand' do
  it 'has 5 cards' do
    hand1 = poker_hand.new(%w(2C 3H 4S 8C AH))
    hand2 = poker_hand.new(%w( 2C 3H 4S))
    hand3 = poker_hand.new(%w( 2C 3H 4S 2C 3H 4S 8C AH))
    expect(poker_hand.validate_size(hand1)).to be true
    expect{poker_hand.validate_size(hand2)}.to raise_error("Hand has too few cards!")
    expect{poker_hand.validate_size(hand3)}.to raise_error("Hand has too many cards!")
  end
end