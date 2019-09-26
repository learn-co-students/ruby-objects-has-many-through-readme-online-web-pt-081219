class Waiter

    attr_accessor :name, :years_experience
    @@all = []

    def initialize(name, years_experience)
        self.name = name
        self.years_experience = years_experience
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meals| meals.waiter == self}
        #returns an array of meals associated with the waiter
    end

    def best_tipper
        best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
        best_tipped_meal.customer
    end

end