class Customer

    attr_accessor :name, :age 
    @@all = []

    def initialize(name, age)
        self.age = age
        self.name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|meals| meals.customer == self}
        #returns an array of a customer's meals
    end

    def waiters
        #visits the returned customer meal array and outputs the waiter attached to those meals. 
        meals.map {|meal| meal.waiter }
    end
  
end