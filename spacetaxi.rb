class Spacetaxi
  attr_accessor :number, :driver, :color, :available

  def initialize(number, driver, color, available= true)
    @number = number
    @driver = driver
    @color = color
    @available = available
    @passengers = []
  end

  def add(passenger)
    @passengers << passenger
  end



end
