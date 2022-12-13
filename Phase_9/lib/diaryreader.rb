class DiaryReader

    def initialize(wpm, diary)
      @wpm = wpm
      @diary = diary
    end
  
    def readable_by_time(time)
        return readable_entries(time).max_by do |entry|
          count_words(entry)
        end
    end

private
  def readable_entries(time)
    return readable_entries = @diary.entries.reject do |entry|
      calreadingtime(entry) > time
    end
  end

    def calreadingtime(entry)
      return (count_words(entry) / @wpm.to_f).ceil
    end
    
    def count_words(entry)
      return 0 if entry.content.empty?
      return entry.content.count(" ") + 1
    end
end