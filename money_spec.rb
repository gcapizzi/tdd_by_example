require 'rspec'
require_relative 'money'

module Money

  describe Dollar do
    it 'allows multiplication' do
      Dollar.new(5).times(2).should == Dollar.new(10)
    end

    it 'tests equality by amount' do
      Dollar.new(5).should == Dollar.new(5)
      Dollar.new(5).should_not == Dollar.new(6)
    end
  end

  describe Euro do
    it 'allows multiplication' do
      Euro.new(5).times(2).should == Euro.new(10)
    end

    it 'tests equality by amount' do
      Euro.new(5).should == Euro.new(5)
      Euro.new(5).should_not == Euro.new(6)
    end
  end

end
