require 'rspec'
require 'poker_hand_compare'

describe PokerHandCompare do
  poker_hand_compare = PokerHandCompare.new
  describe 'cheating hands' do
    it 'has no duplicate cards between the hands' do
      hand1 = poker_hand.new(%w(2C 3H 4S 8C AH))
      hand2 = poker_hand.new(%w(2H 3D 5S 9C KD))
      hand3 = poker_hand.new(%w(2C 3H 4S 8C AH))
      hand4 = poker_hand.new(%w(2C 3H 4S 8C AH))
      expect(poker_hand_compare.cheat_check(hand1,hand2)).to be true
      expect{poker_hand_compare.cheat_check(hand3,hand4)}.to raise_error("One of you cheats! Duplicate cards detected!")
    end
  end
  describe 'compare hands' do
    it 'determines ties' do
      hand1 = poker_hand.new(%w(2H 3D 5S 9C KD))
      hand2 = poker_hand.new(%w(2D 3H 5C 9S KH))
      expect(poker_hand_compare.compare(hand1, hand2)).to == "It's a tie!"
    end
    it 'selects the correct winner' do
      hand1 = poker_hand.new(%w(2H 3D 5S 9C KD))
      hand2 = poker_hand.new(%w(2C 3H 4S 8C AH))
      hand3 = poker_hand.new(%w(2H 4S 4C 2D 4H))
      hand4 = poker_hand.new(%w(2S 8S AS QS 3S))
      hand5 = poker_hand.new(%w(2H 3D 5S 9C KD))
      hand6 = poker_hand.new(%w(2C 3H 4S 8C KH))
      expect(poker_hand_compare.compare(hand1,hand2)).to == "Hand 2 wins - High Card: Ace!"
      expect(poker_hand_compare.compare(hand3,hand4)).to == "Hand 2 wins - Flush!"
      expect(poker_hand_compare.compare(hand5,hand6)).to == "Hand 1 wins - High Card: 9!"
    end
    it 'compares several hands' do
      hand1 = poker_hand.new(%w(2H 3D 5S 9C KD))
      hand2 = poker_hand.new(%w(2C 3H 4S 8C AH))
      hand3 = poker_hand.new(%w(3C 4S 4C AD 4H))
      hand4 = poker_hand.new(%w(2S 8S AC QH 3S))
      hand5 = poker_hand.new(%w(3H 4D 6S 7C QD))
      hand6 = poker_hand.new(%w(2D 3S 4S 6C KH))
      hand7 = poker_hand.new(%w(10S JS KS QS AS))
      expect(poker_hand_compare(hand1, hand2, hand3, hand4, hand5, hand6, hand7)).to == "Hand 7 wins - Royal Flush!!!"
    end
  end
end