class Waiter
  attr_reader :name, :years
  attr_accessor :meals, :customers
  @@all = []

  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
    @meals = []
    @customers = []
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    new_meal = Meal.new(self, customer, total, tip)
    @customers << customer
    @meals << new_meal
  end

  def best_tipper
    @customers.max_by { |customer| customer.tips.sum}
  end
end
