class Music
    def initialize 
        @tracks = []
    end

    def add(text)
        @tracks << text  
    end

    def list
        return @tracks
    end

end