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


