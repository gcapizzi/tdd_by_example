require 'rspec'
require_relative 'money'

describe Money do
  it 'compares amounts of different currencies' do
    Money.new(5, :dollar).should == Money.new(5, :dollar)
    Money.new(5, :dollar).should_not == Money.new(6, :dollar)
    Money.new(5, :dollar).should_not == Money.new(5, :euro)
  end

  it 'allows multiplication' do
    Money.new(5, :dollar).times(2).should == Money.new(10, :dollar)
  end
end
