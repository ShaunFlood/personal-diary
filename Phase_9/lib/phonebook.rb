class Phonebook
    def initialize(diary)
      @diary = diary
    end

    def extract_number
      return @diary.entries.flat_map do |entry| 
        contacts(entry)
      end.uniq
    end

    def contacts(entry)
      return entry.content.scan(/07[0-9]{9}/)
    end
end