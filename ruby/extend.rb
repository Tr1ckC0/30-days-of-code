module Animal

    def be_cute
        puts "I love you"
    end

    def self.types
        puts "mammals"
        puts "fish"
        puts "reptiles"
    end
    
end

class Dog
    # include Animal # adds methods from the module as instance methods
    extend Animal # adds methods from the module as class methods

    def initialize
        puts "bark"
    end
end

fido = Dog.new
Dog.be_cute
# Dog.types
# Animal.types
