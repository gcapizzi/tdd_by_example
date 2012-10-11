module Money
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(n)
      return self.class.new(amount * n)
    end

    def ==(other)
      amount == other.amount
    end
  end
end
