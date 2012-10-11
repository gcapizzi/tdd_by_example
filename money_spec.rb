require 'rspec'
require_relative 'money'

module Money

  describe Money do
    it 'compares amounts of different currencies' do
      Dollar.new(5).should == Dollar.new(5)
      Dollar.new(5).should_not == Dollar.new(6)
      Dollar.new(5).should_not == Euro.new(5)
    end
  end

  describe Dollar do
    it 'allows multiplication' do
      Dollar.new(5).times(2).should == Dollar.new(10)
    end
  end

  describe Euro do
    it 'allows multiplication' do
      Euro.new(5).times(2).should == Euro.new(10)
    end
  end

end
