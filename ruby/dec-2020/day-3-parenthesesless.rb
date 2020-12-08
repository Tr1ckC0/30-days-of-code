

def say_name name, lastname
    print name + " " + lastname
end

puts say_name "robert", "collins"
# => robert collins


class Greeting

    attr_accessor(:name, :lastname)

    def initialize(name, lastname)
        @name, @lastname = name, lastname
    end
end

hello = Greeting.new "robert", " collins"