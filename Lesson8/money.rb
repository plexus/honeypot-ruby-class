class Money
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def amount
    @amount
  end

  def currency
    @currency
  end

  def +(other)
    if other.is_a?(Money)
      if currency == other.currency
        Money.new(amount + other.amount, currency)
      end
    else
      Money.new(amount + other, currency)
    end
  end

  def ==(other)
    other.is_a?(Money) &&
      currency == other.currency &&
      amount == other.amount
  end

  def to_s
    "#{amount} #{currency}"
  end
end
