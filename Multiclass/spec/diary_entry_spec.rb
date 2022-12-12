require "diary_entry"

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("my title", "my contents")
        expect(diary_entry.title).to eq "my title"
        expect(diary_entry.contents).to eq "my contents"
    end
    context "count words" do
        it "counts the word in contents" do
            diary_entry = DiaryEntry.new("my title", "one two three four")
            expect(diary_entry.count_words).to eq 4
        end
    end
        it "returns 0 when context is empty" do
        diary_entry = DiaryEntry.new("my title", " ")
        expect(diary_entry.count_words).to eq 0
    end
end