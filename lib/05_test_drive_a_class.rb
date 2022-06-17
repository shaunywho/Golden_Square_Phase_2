class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @no_words = count_words
    
    @stored_index = 0
    @stored_index_wo_punctuation = 0
    @word_list= @contents.split
    @word_list_wo_punctuation = @contents.scan(/\w+/)
    # ...
  end

  def title
    @title
    # Returns the title as a string
  end

  def contents
    @contents
    # Returns the contents as a string
  end

  def count_words
    @contents.scan(/\w+/).length
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    (@no_words.to_f/wpm).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_in_reading_time = wpm * minutes
    chunk_list = []
    counter = 0
    loop do
      word_to_compare = @word_list_wo_punctuation[@stored_index_wo_punctuation]
      if @stored_index_wo_punctuation>@no_words
        @stored_index_wo_punctuation, @stored_index = 0,0
        return chunk_list.join(' ')
      elsif counter == words_in_reading_time
        return chunk_list.join(' ')
      elsif word_to_compare == @word_list[@stored_index]
        @stored_index_wo_punctuation+=1
        counter+=1
      end
      chunk_list.append(@word_list[@stored_index])
      @stored_index+=1

    end
  end 

end






# class GrammarStats
#   attr_accessor :fail, :pass
#   def initialize
#     # ...
#     self.fail=0 
#     self.pass=0

#   end

#   def check(text) # text is a string
#     # Returns true or false depending on whether the text begins with a capital
#     # letter and ends with a sentence-ending punctuation mark.
#     word_list = text.split
#     first, last = word_list[0][0], word_list[-1][-1]
#     if first.match?(/[A-Z]/) && ['!','.','?'].include?(last)
#       self.+=1
#       return true
#     else
#       @fail+=1
#       false
#     end 
#   end

#   def pass
#     @pass
#   end 
#   def fail
#     @fail
#   end 

#   def percentage_good
#     # Returns as an integer the percentage of texts checked so far that passed
#     # the check defined in the `check` method. The number 55 represents 55%.
#     return (@pass.to_f/(@pass+@fail).to_f*100).to_i

#   end
# end

# text = "Lorem ipsum dolor sit amet consectetur adipisicing elit."
# grammar_checker =  GrammarStats.new
# for i in (0...55)
#   grammar_checker.check(text)
# end 
# for i in (0...45)
#   grammar_checker.check(text+"H") 
# end 

# # puts grammar_checker.pass, grammar_checker.fail
# puts grammar_checker.percentage_good

