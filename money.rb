class Money
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(n)
    return self.class.new(amount * n, currency)
  end

  def plus(other)
    self.class.new(amount + other.amount, currency)
  end

  def ==(other)
    amount == other.amount && self.currency == other.currency
  end

  protected

  attr_reader :amount, :currency
end
