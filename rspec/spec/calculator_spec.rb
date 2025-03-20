require 'spec_helper'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'adds two positive numbers correctly' do
      expect(calculator.add(2, 3)).to eq(5)
    end

    it 'adds a positive and a negative number correctly' do
      expect(calculator.add(2, -3)).to eq(-1)
    end

    it 'adds two negative numbers correctly' do
      expect(calculator.add(-2, -3)).to eq(-5)
    end
  end

  describe '#subtract' do
    it 'subtracts two positive numbers correctly' do
      expect(calculator.subtract(5, 3)).to eq(2)
    end

    it 'subtracts a negative number from a positive number correctly' do
      expect(calculator.subtract(5, -3)).to eq(8)
    end

    it 'subtracts a positive number from a negative number correctly' do
      expect(calculator.subtract(-5, 3)).to eq(-8)
    end
  end
end

