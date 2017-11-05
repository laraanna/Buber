require_relative 'spacetaxi.rb'

class Buber
  attr_accessor :taxi

  def initialize
    @taxis = []
    for i in (1..20)
      @taxis << Spacetaxi.new(i, "Max", "blue")
    end
  end

  def show
    @taxis.each do |taxi|
      puts "Taxi number: #{taxi.number} Driver: #{taxi.driver} Color:#{taxi.color} Available: #{taxi.available}"
    end
  end

  def choose_taxi
    puts "Please select your ride by typing the taxi number:"
    your_taxi = gets.to_i
    @taxis.find do |taxi|
      taxi.number == your_taxi
    end
  end

  def check_availability(taxi)
    if taxi.available == true
      taxi.available = false
      puts "You will be riding with #{taxi.driver} and the availability status changes to #{taxi.available}"
    end
  end

  def become_availabe(taxi)
    if taxi.available == false
      taxi.available = true
      puts "#{taxi.driver} is now available again and ready for new adventures availability-status: #{taxi.available}"
    end
  end

  def pay
    puts "The total amount of your ride is 3 Mars-bars"
    puts "How would you like to pay?"
    puts "1: spacebits"
    puts "2: spacebots"
    payment = gets.chomp.to_i
    done = (payment == 1 && payment == 2)
  end




end
