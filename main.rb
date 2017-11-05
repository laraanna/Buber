require_relative 'buber.rb'
require_relative 'passengers.rb'

done = false

ride = Buber.new
new_passenger = Passenger.new

while not done
  puts "Hi Spacebuddy and welcome to Buber!"
  puts "How can I help you today"
  puts "To register as a new customer and order a taxi type 1."
  puts "Changed your mind and rather teleport type 2"
  choice = gets.chomp.to_i

  case choice
  when 1
    new_passenger.add
    ride.show
    taxi = ride.choose_taxi
    ride.check_availability(taxi)
    new_passenger.destination
    taxi.add(new_passenger)
    ride.pay
    ride.become_availabe(taxi)
    done = true
  when 2
    puts "Good luck teleporting and hopefully see you another time!"
    done = true
  end

end
