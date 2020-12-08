require "prime" 

def count_prime_number_version(array)
  array.count do |num|
    is_prime?(num)
  end
end

def is_prime?(num)
  return false if num == 1

  (2..(num - 1)).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end

# def efficient_is_prime
  

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 25]

puts count_prime_number_version(array)