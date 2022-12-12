require "diary_entry"
require "diary"

RSpec.describe "integration" do
    context "after adding some entries" do
        it "lists out the entries added" do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new("my title", "my contents")
            diary_entry2 = DiaryEntry.new("my title2", "my contents2")
            diary.add(diary_entry1)
            diary.add(diary_entry2)
            expect(diary.all).to eq [diary_entry1, diary_entry2]
        end
    end
    context "counts words" do
        it "counts the words inside the context" do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new("my title", "my contents")
            diary_entry2 = DiaryEntry.new("my title2", "my contents 2")
            diary.add(diary_entry1)
            diary.add(diary_entry2)
            expect(diary.count_words).to eq 5
        end
    end
end