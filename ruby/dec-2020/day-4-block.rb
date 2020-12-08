# method that adds 'buzz' to the end of each
# word which meets the conditional block

def add_buzz_to_each_word_that(words, &block)
  new_words = []
  for word in words
    if block.call(word)
      new_words << word + "buzz"
    else
      new_words << word
    end
  end
  new_words
end


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



