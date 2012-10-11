require 'rspec'
require_relative 'money'

class Fixnum
  def money(currency); Money::Money.new(self, currency); end
  def dollars; money(:dollar); end
  def euros; money(:euro); end
end

module Money

  describe Money do
    it 'compares amounts of different currencies' do
      5.dollars.should == 5.dollars
      5.dollars.should_not == 6.dollars
      5.dollars.should_not == 5.euros
    end

    describe '#times' do
      it 'multiplies money by a constant' do
        5.dollars.times(2).should == 10.dollars
      end
    end

    describe '#plus' do
      it 'returns a Sum object' do
        sum = 5.dollars.plus(5.dollars)

        sum.augend.should == 5.dollars
        sum.addend.should == 5.dollars
      end
    end
  end

  describe Sum do
    describe '#reduce' do
      it 'adds the two addends' do
        sum = Sum.new(3.dollars, 4.dollars)
        sum.reduce(:dollar).should == 7.dollars
      end
    end
  end
end
