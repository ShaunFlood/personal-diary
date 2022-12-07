#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text
# assuming that I can read 200 words a minute.

require 'reading_time'

 RSpec.describe "reading_time" do
   # context "When given one word" do
        #it "returns 1" do
        #result = reading_time("word")
        #expect(result).to eq 1
        #end

    #end
    context "When given 200 words" do
        it "returns 1 minute" do
        result = reading_time(("hello " * 200))
        expect(result).to eq "1 minute"
        end
    end
    context "When given 300 words" do
        it "returns 1.5 minutes" do
        result = reading_time(("hello " * 300))
        expect(result).to eq "1.5 minutes"
        end
    end
    context "When given 400 words" do
        it "returns 2 mintues" do
            result = reading_time(("hello " * 400))
            expect(result).to eq "2 minutes"
        end
    end











end