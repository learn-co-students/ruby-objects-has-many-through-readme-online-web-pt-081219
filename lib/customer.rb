class Customer
  attr_reader :name, :age, :meals, :waiters
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @meals = []
    @waiters = []
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    meal = Meal.new(waiter, self, total, tip)
    
    waiter.check_tip(self, tip)
    waiter.meals.push(meal)
    
    @waiters.push(waiter)
    @meals.push(meal)
  end
end