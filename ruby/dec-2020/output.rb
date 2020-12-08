words = ["robert", "we", "fizz", "angry", "happy"]

# greater than 4 letters
add_buzz_to_each_word_that(words) do |word| 
    word.length > 4
end
# =>["robertbuzz", "we", "fizz", "angrybuzz", "happybuzz"]

# last letter is 'y'
add_buzz_to_each_word_that(words) do |word| 
    word[-1] == "z"
end
# => ["robert", "we", "fizzbuzz", "angry", "happy"]


