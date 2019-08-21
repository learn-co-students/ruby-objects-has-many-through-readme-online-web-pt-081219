class Customer
  attr_accessor :name, :age, :meals, :waiters, :tip
  
  @@all = []
  
  def initialize(name, age)
    @meals = []
    @waiters = []
    @name = name 
    @age = age 
    @@all << self
    
  end
  
  def self.all 
    @@all
  end
  
  def new_meal(waiter, total, tip)
    @tip = tip
    meal = Meal.new(waiter, self, total, tip)
    waiter.meals << meal 
    waiter.customers << self
    @waiters << waiter
    @meals << meal
  end
  
end