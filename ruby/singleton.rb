class Example
    @@all = []

    class << self    # this opens up the scope to the class (singleton)
        def all      # so this is now equivalent to self.all or Example.all
            @@all
        end
    end

    def initialize
        self.class.all << self
    end

end

def Example.count
    self.class.all  # be careful not to use @@all here cause the variable 
                    # is scoped to the block where the class is defined
end

new_example = Example.new

class << new_example  # opens up the singleton class for this instance of Example
    def im_special    # so this is equivalent to def new_example.im_special

        puts "I'm a special method for this instance only"
    end
end
