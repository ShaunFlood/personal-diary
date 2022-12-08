require 'Grammar_Stats'

RSpec.describe GrammarStats do
    context "Grammatical text inputted to check" do
        it "returns true" do
           gs = GrammarStats.new
           expect(gs.check("Test.")).to eq true
           expect(gs.check("Test!")).to eq true
           expect(gs.check("Test?")).to eq true
        end
    end
    context "Non-grammatical text inputted to check" do
        it "returns false" do
            gs = GrammarStats.new
            expect(gs.check("test")).to eq false
            expect(gs.check("Test")).to eq false
            expect(gs.check("test.")).to eq false
        end
    end
    context "Been no checks when using percentage_good" do
        it "returns 0" do
            gs = GrammarStats.new
            expect(gs.percentage_good).to eq 0
        end
    end
    context "Checks have been called" do
        it "returns an interger" do
            gs = GrammarStats.new
            gs.check("Test.")
            expect(gs.percentage_good).to eq 100
            gs.check("Test.")
            gs.check("test.")
            expect(gs.percentage_good).to eq 67
        end
    end
        











end
            