require "prime" 

def count_prime_number_version_1(array)
    count = 0
    array.each do |num|
        next if num == 1
        if num == 2 or num == 3
            count += 1
            puts num
        elsif num % 2 != 0 and num % 3 != 0
            count += 1
            puts num
        end
    end
    count
end

def count_prime_number_version_sucka(array)
    prime_count = 0
    for item in array
      next if item == 1
      is_prime = true
    
      number = item - 1
      while number > 1
        if item % number == 0
          is_prime = false
          break
        else
          number = number - 1
        end
      end
  
      if is_prime
        prime_count += 1
      end
    end
    return prime_count
  end
  

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts count_prime_number_version_1(array)