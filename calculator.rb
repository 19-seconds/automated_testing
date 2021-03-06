require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def cube(number)
    number * number * number
  end

end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new 
      expect(calculator.add(1,2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new 
      expect(calculator.subtract(5,3)).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      expect(calculator.square(3)).to eq(9)
    end
  end

  describe '#cube' do
    it 'should return the cube of a number' do
      calculator = Calculator.new
      expect(calculator.cube(3)).to eq(27)
    end
  end
end