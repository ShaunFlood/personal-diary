class Diary 
    def initialize
      @entries = []
    end
    
    def add(entry) 
      @entries << entry
    end
  
    def entries
      @entries
    end
end