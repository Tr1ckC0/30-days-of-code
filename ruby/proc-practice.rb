def math(num, proc)
    proc.call(num)
end

square = Proc.new { |x| x ** 2}

puts math(5, square)

cube = Proc.new { |x| x ** 3}

nums = [1, 2, 3, 4]
