module Money

  class Money
    def ==(other)
      amount == other.amount && self.class == other.class
    end

    protected

    attr_reader :amount
  end

  class Dollar < Money
    def initialize(amount)
      @amount = amount
    end

    def times(n)
      return self.class.new(amount * n)
    end
  end

  class Euro < Money
    def initialize(amount)
      @amount = amount
    end

    def times(n)
      return self.class.new(amount * n)
    end
  end

end
