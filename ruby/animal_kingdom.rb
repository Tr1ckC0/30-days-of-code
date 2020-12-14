module AnimalOrganizer
    # class methods to be inherited

    @@animals = []

    def animals
        @@animals
    end

    def count
        self.class.all.length
    end
end

module Animal
    # instance methods to be inherited
    
    extend AnimalOrganizer

    def initialize
        self.class.animals << self
    end

    def eat 
        puts "nom nom nom"
    end

    def sex
        puts "brown chicken brown cow"
    end

    def sleep
        puts "zzzzzzzzzz"
    end

    def have_babies
        puts "boom here's a baby"
    end
end

class Mammal
    include Animal
    extend AnimalOrganizer

    def self.all
        @@all
    end

    @@all = []

    def initialize
        self.class.all << self
        super
    end

    def nurse
        puts "here's your lactose baby"
    end

    def have_babies
        super
        puts "these babies are LIVE"
    end
    

end

class Reptile
    include Animal
    extend AnimalOrganizer

    @@all = []

    def initialize
        self.class.all << self
        super
    end

    def lay_eggs
        puts "eeeeerrr prgafjawejafewa *fart sound*"
    end

    def have_babies
        puts "eggs crack"
        super
    end

    def self.all
        @@all
    end

end

rep = Reptile.new
mam = Mammal.new
rep2 = Reptile.new

rep.have_babies
mam.have_babies
rep.eat
mam.sleep
mam.sex

puts Reptile.all # => instances of rep
puts Mammal.all # => instances of mam

puts Animal.animals

# => collection of all Animal instances for each
