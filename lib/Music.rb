class Music
    def initialize
        @track = []
    end

    def add(text)
        raise "Error: duplicate input" if @track.include?(text)
        @track << text
    end

    def list
        return @track
    end
end