class Waiter
  attr_reader :name, :years_of_experience, :meals, :best_tip, :best_tipper
  
  @@all = []
  
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @meals = []
    @best_tip = 0
    
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip)
    check_tip(customer, tip)
    
    @meals.push(Meal.new(self, customer, total, tip))
  end 
  
  def check_tip(customer, tip)
    if tip > @best_tip 
      @best_tip = tip
      @best_tipper = customer
    end
  end
  
  def meals
    @meals
  end
end