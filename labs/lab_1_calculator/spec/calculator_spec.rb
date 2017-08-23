require 'rspec'
require 'calculator'

describe Calculator do
  calc = Calculator.new
	describe 'addition' do
		it 'does not care about the order numbers are added' do
			expect(calc.add(5, 9)).to eq 14
			expect(calc.add(9, 5)).to eq 14
		end
		it 'does not change when you add 0' do
			expect(calc.add(12, 0)).to eq 12
		end
  end
  describe 'subtraction' do
    it 'returns an interger' do
      expect(calc.subtract(5,9).is_a?(Integer)).to be true
    end
    it 'cannot subtract non-numbers' do
			expect{calc.subtract(5,"bob")}.to raise_error("Cannot perform subtraction with a non-number")
    end
    it 'does care about the order of numbers that are subtracted' do
			expect(calc.subtract(5,9)).to eq -4
      expect(calc.subtract(9,5)).to eq 4
    end
    it 'does not change when you subtract 0' do
			expect(calc.subtract(5,0)).to eq 5
    end
    it 'returns 0 when you subtract a number from itself' do
			expect(calc.subtract(12-12)).to eq 0
    end
    it 'can accept more than two numbers' do
			expect(calc.subtract(30,15,5)).to eq 10
    end
  end
  describe 'multiplication' do
		it 'returns an interger' do
			expect(calc.multiply(5,9).is_a?(Integer)).to be true
		end
    it 'cannot multiply non-numbers' do
			expect{calc.multiply(10,"bob")}.to raise_error("Cannot perform multiplication with a non-number")
    end
    it 'does not care about the order of numbers that are multiplied' do
			expect(calc.multiply(10,20)).to eq(200)
			expect(calc.multiply(20,10)).to eq(200)
    end
    it 'returns the base number when multiplied by 1' do
			expect(calc.multiply(1,1564)).to eq(1564)
    end
    it 'returns 0 when you multiply by 0' do
			expect(calc.multiply(0,50)).to eq(0)
    end
    it 'can accept more than two numbers' do
			expect(calc.multiply(10,10,25)).to eq(2500)
			expect(calc.multiply(10,20,50,70,80,90)).to eq(5040000000)
    end
  end
  describe 'division' do
		it 'returns an interger' do
			expect(calc.divide(10,2).is_a?(Integer)).to be true
		end
		it 'cannot divide non-numbers' do
			expect{calc.divide(10,"bob")}.to raise_error("Cannot perform division with a non-number")
		end
		it 'does care about the order of numbers that are divided' do
			expect(calc.divide(20,10)).to eq(2)
			expect(calc.divide(10,20)).to eq(0)
		end
		it 'returns the base number when divided by 1' do
			expect(calc.divide(10,1)).to eq(10)
    end
    it 'returns a 0 when you divide 0 by any integer' do
			expect(calc.divide(0,10)).to eq(0)
    end
		it 'returns an error when you divide by 0' do
			expect{calc.divide(10,0)}.to raise_error("Cannot divide by 0")
		end
		it 'can accept more than two numbers' do
			expect(calc.divide(200,2,10)).to eq(10)
		end
  end
end