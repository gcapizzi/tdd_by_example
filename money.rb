module Money

  class Money
    def initialize(amount)
      @amount = amount
    end

    def times(n)
      return self.class.new(amount * n)
    end

    def ==(other)
      amount == other.amount && self.class == other.class
    end

    protected

    attr_reader :amount
  end

  class Dollar < Money; end

  class Euro < Money; end

end
