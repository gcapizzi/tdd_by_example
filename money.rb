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

    alias :* :times

    def plus(other)
      Sum.new(self, other)
    end

    alias :+ :plus

    def ==(other)
      amount == other.amount && self.currency == other.currency
    end

    def reduce(bank, to)
      rate = bank.get_rate(currency, to)
      self.class.new(amount / rate, to)
    end
  end

  class Sum
    attr_reader :augend, :addend

    def initialize(augend, addend)
      @augend = augend
      @addend = addend
    end

    def reduce(bank, to)
      Money.new(augend.amount + addend.amount, to)
    end
  end

  class Bank
    def initialize
      @rates = {}
    end

    def reduce(expression, to)
      expression.reduce(self, to)
    end

    def add_rate(from, to, rate)
      @rates[from] = {} unless @rates[from]
      @rates[from][to] = rate
    end

    def get_rate(from, to)
      return 1 if from == to
      @rates[from][to]
    end
  end
end
