require 'rspec'
require_relative 'money'

module Money

  describe Dollar do
    it 'allows multiplication' do
      five = Dollar.new(5)
      five.times(2).amount.should == 10
    end

    it 'tests equality by amount' do
      Dollar.new(5).should == Dollar.new(5)
      Dollar.new(5).should_not == Dollar.new(6)
    end
  end

end
