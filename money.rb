module Money

  class Money
    attr_reader :amount, :currency

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def times(n)
      return self.class.new(amount * n, currency)
    end

    def plus(other)
      Sum.new(self, other)
    end

    def ==(other)
      amount == other.amount && self.currency == other.currency
    end

    def reduce(to)
      return self
    end
  end

  class Sum
    attr_reader :augend, :addend

    def initialize(augend, addend)
      @augend = augend
      @addend = addend
    end

    def reduce(to)
      Money.new(augend.amount + addend.amount, to)
    end
  end

  class Bank
    def reduce(expression, to)
      expression.reduce(to)
    end
  end
end
