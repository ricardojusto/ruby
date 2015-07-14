class Transaction
  def initialize(amount)
    @amount = amount
    @time = Time.now
    @message = message
    # Initialize amount and date of transaction
  end

  def amount
    @amount
  end

  def message
    @message
  end

  def to_s
    resume = "#{@amount}€ #{@time.strftime("on  %d/%m/%y at %l:%M")} - #{@message}"
    if amount >= 0
     "You have just deposited #{resume}"
    # Nicely print transaction infos using Time#strftime.
   else
    "You have just withdrawn #{resume}€" 
      end
  end
end