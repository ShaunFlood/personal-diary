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
end