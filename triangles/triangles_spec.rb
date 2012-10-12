require 'rspec'
require_relative 'triangles'

describe Triangle do
  describe '#initialize' do
    it 'sets the three sides' do
      t = Triangle.new(1, 2, 3)
      t.a.should == 1
      t.b.should == 2
      t.c.should == 3
    end
  end

  describe '#type' do
    it 'returns 1 if the triangle is equilateral' do
      Triangle.new(1, 1, 1).type.should == 1
    end

    it 'returns 2 if the triangle is isosceles' do
      Triangle.new(1, 1, 2).type.should == 2
      Triangle.new(1, 2, 1).type.should == 2
      Triangle.new(2, 1, 1).type.should == 2
    end

    it 'returns 3 if the triangle is scalene' do
      Triangle.new(1, 2, 3).type.should == 3
    end
  end
end
