class GrammarStats
    def initialize
      @truechecks = 0
      @totalchecks = 0
    end
  
    def check(text) # text is a string
        pun = ["?", ".", "!"]
        result = text[0] == text[0].upcase && pun.include?(text[-1])
        @truechecks += 1 if result == true
        @totalchecks += 1
        result
    end
  
    def percentage_good
        return 0 if @totalchecks == 0
        ((@truechecks / @totalchecks.to_f) * 100).round
    end
end