class Oystercard

  attr_reader :balance
  LIMIT = 90
  # MINIMUM = 1

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    raise "Oystercard has reached #{LIMIT}" if (@balance + amount) > LIMIT
    @balance += amount
  end

  def deduct(amount)
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    raise "insufficient funds" if @balance <= 1
    @in_journey = true
    return self
  end

  def touch_out
    @in_journey = false
    return self
  end

end
