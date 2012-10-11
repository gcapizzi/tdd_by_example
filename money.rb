module Money
  class Dollar
    def initialize(amount)
      @amount = amount
    end

    def times(n)
      return self.class.new(amount * n)
    end

    def ==(other)
      amount == other.amount
    end

    protected

    attr_reader :amount
  end
end
