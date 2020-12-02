# create a method which takes an array of numbers 
# and counts the numbers which are greater than x

def generic_way(nums, x)
    count = 0
    for num in nums
        if num > x
            count += 1
        end
    end
    return count
end

def ruby_way(nums, x)
    count = 0
    nums.each do |num| #use the each enumerator
        count += 1 if num > x
    end
    count #implicit return
end

def even_rubier_way(nums, x)
    nums.count { |num| num > x } #uses the fitting enumerator and implicit return
end

array = [1, 2, 6, 9, 40, 100, 3, 5, 8]

puts generic_way(array, 3)
puts ruby_way(array, 3)
puts even_rubier_way(array, 3)

puts generic_way(array, 20)
puts ruby_way(array, 20)
puts even_rubier_way(array, 20)

puts generic_way(array, 1000)
puts ruby_way(array, 1000)
puts even_rubier_way(array, 1000)

puts generic_way(array, -2)
puts ruby_way(array, -2)
puts even_rubier_way(array, -2)
