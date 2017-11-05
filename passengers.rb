class Passenger
  attr_accessor :first_name, :last_name, :age, :adress

  def initialize
    @first_name = []
    @last_name = []
    @age = []
    @adress = []
  end

  def add
    puts "To initialize your ride please enter the following details"
    puts "Your first name:"
    @first_name = gets.chomp
    puts "Your last name:"
    @last_name = gets.chomp
    puts "Age:"
    @age = gets.chomp.to_i
  end

  def destination
    puts "Please enter your pick-up adress:"
    @adress = gets.chomp
    8.times {print "***---" ; sleep 0.5}
    puts ""
    puts "Welcome at #{@adress} I hope you enjoyed your ride!"

  end

end
