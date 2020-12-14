require "pry"

# whenever an new 'person' is created, they should exist in their departments @@all
# however they should also exist in the overall organizations (Personell's) @@all

module Personnel

    @@all = []

    def initialize
        self.class.all << self
    end

    def all
        @@all
    end

end

class SalesPerson
    extend Personnel
    @@all = []

    def initialize
        self.class.all << self
    end

end

class Manager
    extend Personnel

    def initialize
        self.class.all << self
    end
end

Manager.new
SalesPerson.new