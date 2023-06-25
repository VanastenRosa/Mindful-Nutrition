# Nutrition Coaching and Consultation Services

# Declaring constants to use throughout the file
TAX_RATE = 0.08
TIP_RATE = 0.15

# Setting up classes to handle pricing calculations
class NutritionConsultation
  attr_reader :price
  def initialize(price)
    @price = price
  end

  def total
    @price + tax + tip
  end

  def tax
    @price * TAX_RATE
  end

  def tip
    @price * TIP_RATE
  end
end

# Setting up methods for different services
def basic_service
  NutritionConsultation.new(50)
end

def advanced_service
  NutritionConsultation.new(75)
end

def premium_service
  NutritionConsultation.new(100)
end

# Setting up method to calculate total cost
def calculate_total_cost(services)
  total = 0
  services.each do |service|
    total += service.total
  end
  total
end

# Driving logic
services = []

# User input loop to build list of services
loop do
  puts "Please select a service:"
  puts "1) Basic Service - $50"
  puts "2) Advanced Service - $75"
  puts "3) Premium Service - $100"
  puts "4) Calculate Total"

  input = gets.chomp.to_i

  if input == 1
    services << basic_service
    puts "Basic service added to cart."
  elsif input == 2
    services << advanced_service
    puts "Advanced service added to cart."
  elsif input == 3
    services << premium_service
    puts "Premium service added to cart."
  elsif input == 4
    total_cost = calculate_total_cost(services)
    puts "Total cost is #{total_cost}"
    break
  else
    puts "Invalid input."
  end
end