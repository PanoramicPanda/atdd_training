require 'rspec'
require 'poker_card'

describe 'valid card' do
  it 'has a value' do
    ace_of_spades = poker_card.new("AS")
    three_of_hearts = poker_card.new("3H")
    fifteen_of_hearts = poker_card.new("15H")
    expect(ace_of_spades.check_valid("Value")).to be true
    expect(three_of_hearts.check_valid("Value")).to be true
    expect{fifteen_of_hearts.check_valid("Value")}.to raise_error("Card has an invalid value!")
  end
  it 'has a valid suite' do
    ace_of_spades = poker_card.new("AS")
    three_of_hearts = poker_card.new("3H")
    three_of_frisbees = poker_card.new("3F")
    expect(ace_of_spades.check_valid("Suit")).to be true
    expect(three_of_hearts.check_valid("Suit")).to be true
    expect{three_of_frisbees.check_valid("Suit")}.to raise_error("Card has an invalid suit!")
  end
  it 'has an actual value' do
    three_of_hearts = poker_card.new("3H")
    ace_of_spades = poker_card.new("AS")
    king_of_clubs = poker_card.new("KC")
    expect(three_of_hearts.actual).to eq 3
    expect(ace_of_spades.actual).to eq 14
    expect(king_of_clubs.actual).to eq 13
  end
end