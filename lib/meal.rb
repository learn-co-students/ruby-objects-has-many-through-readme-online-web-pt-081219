class Meal

    @@all = []

    attr_accessor :waiter, :customer, :total, :tip

    def initialize(waiter, customer, total, tip = 0)
        @waiter = waiter
        @customer = customer
        @total = tip
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end