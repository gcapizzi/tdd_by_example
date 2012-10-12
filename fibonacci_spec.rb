require 'rspec'
require_relative 'fibonacci'

CASES = [
  [0, 0],
  [1, 1],
  [2, 1],
  [3, 2],
  [4, 3],
  [5, 5],
]
describe '#fibonacci' do
  it 'returns the nth element of the Fibonacci sequence' do
    CASES.each do |c|
      fib(c[0]).should == c[1]
    end
  end
end
