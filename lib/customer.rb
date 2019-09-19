class Customer
attr_accessor :name, :age 
@@all = Array.new  


def initialize(name,age)  
@name = name 
@age = age 
Customer.all << self 
end

def self.all
@@all 
end 

def new_meal(waiter, total, tip)
meal = Meal.new(waiter, self, total, tip)
end 

def meals
Meal.all.select {|meal| meal.customer == self}
end 

def waiters
meals.map {|meal| meal.waiter}
end 

end 