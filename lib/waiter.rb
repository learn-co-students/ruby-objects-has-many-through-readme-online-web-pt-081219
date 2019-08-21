class Waiter
  
  attr_accessor :name, :years_of_experience, :meals, :customers
  @@all = []
  def initialize(name, years_of_experience)
    @meals = []
    @customers = []
    @name = name 
    @years_of_experience = years_of_experience
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal(customer, total, tip)
   
    meal = Meal.new(self,customer, total, tip) 
  end 
  
  def best_tipper 
    array_of_tips = []
    self.meals.each{|el| array_of_tips << el.tip }
    self.meals.find{|el| el.customer if el.tip == array_of_tips.max}
    
  end
end