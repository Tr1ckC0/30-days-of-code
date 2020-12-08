def take_proc(num, p)
    p.call(num)
end

square = Proc.new { |x| x**2 }
cube = Proc.new { |x| x**3 }


puts take_proc(4, square) # => 16
puts take_proc(2, cube) # => 18
