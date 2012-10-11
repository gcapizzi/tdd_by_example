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
      it 'adds two amounts of the same currency' do
        five = Money.new( 5, :dollar)
        ten  = Money.new(10, :dollar)

      five.plus(five).should == ten
      end
    end
  end

end
