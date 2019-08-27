class Oystercard

  attr_reader :balance
  LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "Oystercard has reached #{LIMIT}" if (@balance + amount) > LIMIT
  end

  def deduct(amount)
  end

end
