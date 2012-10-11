require 'rspec'
require_relative 'money'

module Money

  describe Money do
    it 'compares amounts of different currencies' do
      Money.new(5, :dollar).should == Money.new(5, :dollar)
      Money.new(5, :dollar).should_not == Money.new(6, :dollar)
      Money.new(5, :dollar).should_not == Money.new(5, :euro)
    end

    describe '#times' do
      it 'multiplies money by a constant' do
        Money.new(5, :dollar).times(2).should == Money.new(10, :dollar)
      end
    end

    describe '#plus' do
      it 'returns a Sum object' do
        five = Money.new( 5, :dollar)
        sum = five.plus(five)

        sum.augend.should == five
        sum.addend.should == five
      end
    end
  end

  describe Sum do
    describe '#reduce' do
      it 'adds the two addends' do
        sum = Sum.new(Money.new(3, :dollar), Money.new(4, :dollar))
        sum.reduce(:dollar).should == Money.new(7, :dollar)
      end
    end
  end
end
