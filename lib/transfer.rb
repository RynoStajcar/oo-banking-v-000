class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if sender.valid? == "open"
      puts "it works"
    else
    "Transaction rejected. Please check your account balance."
      sender.status = "rejected"
    end
  end

end
