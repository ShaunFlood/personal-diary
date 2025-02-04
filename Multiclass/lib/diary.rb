class Diary
    def initialize
      @entries = []
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      @entries
      # Returns a list of instances of DiaryEntry
    end
  
    def count_words
      return @entries.sum(&:count_words)
    end 
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    end
  end