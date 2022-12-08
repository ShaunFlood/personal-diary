require 'Diary_Entry'

RSpec.describe DiaryEntry do
    it "Gets the title" do
        Title = DiaryEntry.new("red", "blue")
        expect(Title.title).to eq "red"
        ## when initalizing you have to put the inputs through, which I forgot for the first test.
    end
    it "Gets the contents" do
        expect(Title.contents).to eq "blue"
    end
    it "Counts the word in contents and returns it as interger" do
        expect(Title.count_words).to eq 1
    end
    it "Counts multiple words in the contents and returns interger" do
        Title = DiaryEntry.new("red", "I really like blue")
        expect(Title.count_words).to eq 4
    end
    it "It returns a count of 1 when an interger is entered to context." do
        Title = DiaryEntry.new("red", 200)
        expect(Title.count_words).to eq 1
    end
    it "Counts how many words the user can read per minute" do
        Title = DiaryEntry.new("red", "blue " * 400)
        expect(Title.reading_time(200)).to eq 2
    end
    context "The amount of words are greater than contents" do
        it "returns @contents" do
            Title = DiaryEntry.new("red", "blue " * 400)
            expect(Title.reading_chunk(2, 401)).to eq Title.contents.chop
        end
    end    
    context "The amount of words are less than contents" do
        it "returns first 50 words of @contents" do
            Title = DiaryEntry.new("red", "blue " * 10 )
            expect(Title.reading_chunk(5, 1)).to eq ("blue " * 5).chop
        end
    end
    context "When called again" do
        it "returns the next chunk" do
            Title = DiaryEntry.new("red", "blue " * 5 + "green " * 5)
            Title.reading_chunk(5, 1)
            expect(Title.reading_chunk(5, 1)).to eq ("green " * 5).chop
        end
    end
    context "When contents is completed" do
        it "It returns the start again" do
            Title = DiaryEntry.new("red", "blue " * 5 + "green " * 5)
            Title.reading_chunk(10, 1)
            expect(Title.reading_chunk(10, 1)).to eq ("blue " * 5 + "green " * 5).chop
        end
    end
end