def use_atm
  @balance = 100

  def withdraw(amount)
    @balance = @balance - amount
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def check_balance
    puts "Your balance is #{@balance}"
  end

  puts 'Welcome to Bank of Jamie.
          _._._                       _._._
         _|   |_                     _|   |_
         | ... |_._._._._._._._._._._| ... |
         | ||| |  o NATIONAL BANK o  | ||| |
         | """ |  """    """    """  | """ |
    ())  |[-|-]| [-|-]  [-|-]  [-|-] |[-|-]|  ())
   (())) |     |---------------------|     | (()))
  (())())| """ |  """    """    """  | """ |(())())
  (()))()|[-|-]|  :::   .-"-.   :::  |[-|-]|(()))()
  ()))(()|     | |~|~|  |_|_|  |~|~| |     |()))(()
     ||  |_____|_|_|_|__|_|_|__|_|_|_|_____|  ||
  ~ ~^^ @@@@@@@@@@@@@@/=======\@@@@@@@@@@@@@@ ^^~ ~
      ^~^~                                ~^~^'

  puts "What would you like to do?"

  while true
    puts "
    1. Withdraw
    2. Deposit
    3. Check Balance
    4. Exit"

    @answer = gets.chomp
    case @answer
    when "1"
      puts "How much would you like to withdraw?"
      @withdrawal = gets.chomp.to_i
      withdraw(@withdrawal)
      puts "Your balance is now #{@balance}"
    when "2"
      puts "How much would you like to deposit?"
      @deposited = gets.chomp.to_i
      deposit(@deposited)
      puts "Your balance is now #{@balance}"
    when "4"
      puts "Thank you for using this ATM."
      break
    end

    puts "Would you like to do anything else?"
  end
end

use_atm
