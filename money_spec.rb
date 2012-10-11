require 'rspec'
require_relative 'money'

module Money

  describe Dollar do
    it 'allows multiplication' do
      five = Dollar.new(5)
      five.times(2).amount.should == 10
    end
  end

end
