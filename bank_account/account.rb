require_relative "transaction"

# This is how you define your own custom exception classes
class DepositError < StandardError
end




# account_info = [
#   BankAccount.new({name:"Bruce Lee", iban: "FR14-2004-1010-0505-0001-3M02-606", position: 200, password: "brucelit"})
# ]




class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
    
  end
  
  def time
    @time
  end

  def amount
    @amount
  end

  def withdraw(amount, message)
    if amount < @position
    #add_transaction(amount*-1)
    # add_transaction(-amount)
    #"Total Balance is #{@position}"


    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
      puts "You have withdraw #{amount}."
    else
      add_transaction(amount*-1) #ou -amount
      puts"Sorry, you dont have enough money" 
    end
  end

  def deposit(amount, message)
    if amount < MIN_DEPOSIT
      puts "Minimum deposit required of 100"
      #opção: fail DepositError
    else
    add_transaction(amount)
    puts "You have deposited #{amount}"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    end
  end

  def transactions_history(args = {}) #se nao receberes args usa {} como default
    if args[:password] == nil
      "Password not found"
    elsif args[:password] != @password
      "Wrong Password"
    else
      @transactions.join("\n") 
    end


    # if args.empty? 
    #   puts "No password given"
    # elsif args == @password
    #   puts "Transactions : #{@transactions}"
    # else
    #   puts "Wrong Password"
    # end
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    @iban[0..3] + "*" * 26 + @iban[-3..-1]
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    " NAME: #{@name}\n IBAN: #{iban}\n BALANCE: #{@position}\n " #aqui o iban vai chamar o método
  end
  
  private

  def add_transaction(amount)
    @position += amount
    @transactions << Transaction.new(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)

  end

end



account = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "brucelit")
#puts account.deposit(99)
#puts account
account.deposit(100, "paycheck")
account.withdraw(999, "rent")
puts account.transactions_history({:password => "brucelit"})

#FALTA COLOCAR A MENSAGEM A FUNCIONAR
