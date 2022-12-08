class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
            return  @contents.to_s.split.count
    end
  
    def reading_time(wpm)
        return count_words / wpm
    end
  
    def reading_chunk(wpm, minutes) 
        @savedindex ||= 0
        aow = wpm * minutes 
        chunk = @contents.split[@savedindex...(aow+@savedindex)].join(" ")
        @savedindex = @savedindex+aow >= self.count_words ? 0 : (@savedindex+aow)
        return chunk
        

        # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      #3 dots is one less than the index number and 2 dots is the excat.
        #amount of words = wpm * minutes this gives how many you can read in a chunk
        # 
        # returns @contents
    end
  end