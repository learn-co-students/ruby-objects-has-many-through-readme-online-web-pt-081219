class Customer
  attr_reader :name, :age
  attr_accessor :waiters, :meals, :tips
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @meals = []
    @waiters = []
    @tips = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    new_meal = Meal.new(waiter, self, total, tip)
    @meals << new_meal
    @waiters << waiter
    @tips << tip
    new_meal.waiter.customers << self
    new_meal.waiter.meals << new_meal
  end
end
