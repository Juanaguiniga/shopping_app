require_relative 'user'
require_relative 'store'

class App
  attr_accessor :name, :wallet, :store


   
  def initialize
    
    while true
      case menu
        when 1
          user
        when 2
          store
        when 3
          balance  
        when 4
          puts 'please come again'
          exit
             
    
        end
    end
  end

  


  def menu
  puts 'Store of useless stuff'
  puts '----Main Menu----'
  puts '1 - Register'
  puts '2 - shirts'
  puts '3 - Balance'
  puts '4 - Exit'
  choice = gets.strip.to_i
  end

  def user 
    puts 'enter your name'
    name = gets.strip
    puts 'enter your amount'
    wallet = gets.strip.to_f
    @user = User.new(name, wallet)
    
  end

  def store
    if @store
      puts @store.shirts
      puts shirts = ["100"] 

    else
      puts 'empty stock'
    end  
  end  

  def balance
    if @user
      puts 'your balance'
      puts @user.wallet
    else 
      puts 'user must register first'
    end  
  end
  
end



app = App.new 
store = Store.new



