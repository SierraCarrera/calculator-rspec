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
		it 'expects reversed numbers to equal negative answer' do
			expect(calc.sub(9, 5)).to eq 4
			expect(calc.sub(5, 9)).to eq -4
		end
		it 'does not change when you subtract 0' do
			expect(calc.sub(12, 0)).to eq 12
		end
		it 'to equal zero when difference of itself is taken' do
			expect(calc.sub(4, 4)).to eq 0
		end
	end
	describe 'multiplication' do
		it 'does not care about the order of the numbers multiplied' do
			expect(calc.mult(8, 2)).to eq 16
			expect(calc.mult(2, 8)).to eq 16
		end
		it 'returns zero when multiplied by zero' do
			expect(calc.mult(5, 0)).to eq 0
		end
		it 'returns the number when multiplied by one' do
			expect(calc.mult(5, 1)).to eq 5
		end
	end
	describe 'division' do
		it 'changes answer depending on integer order' do
			expect(calc.divd(14, 7)).to eq 2
			expect(calc.divd(7, 14)).to eq 0
		end
		it 'returns the given number when divided by one' do
			expect(calc.divd(14, 1)).to eq 14
		end
		it 'returns zero when it is the first argument' do
			expect(calc.divd(0, 4)).to eq 0
		end
		it 'returns an error when it is divided by zero' do
			expect{calc.divd(4, 0)}.to raise_error ZeroDivisionError
		end
	end
end