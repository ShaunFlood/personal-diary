require 'diary'
require 'diary_entry'
require 'diaryreader'
require 'phonebook'

RSpec.describe "diary integration" do
    it "adds diary entries to a list" do
        diary = Diary.new
        entry1 = DiaryEntry.new("my title", "my contents")
        entry2 = DiaryEntry.new("my title2", "my contents2")
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.entries).to eq [entry1, entry2]
    end
    it "when we ask for the most optimial entry based upon wpm we can read" do
        diary = Diary.new
        diary_reader = DiaryReader.new(1, diary)
        entry1 = DiaryEntry.new("my title", "one")
        entry2 = DiaryEntry.new("my title2", "one two")
        entry3 = DiaryEntry.new("my title2", "one two three")
        entry4 = DiaryEntry.new("my title3", "one two three four")
        diary.add(entry1)
        diary.add(entry2)
        diary.add(entry3)
        diary.add(entry4)
        expect(diary_reader.readable_by_time(4)).to eq entry4
    end
    it "Give us a list of phone numbers in the diary entries" do
        diary = Diary.new
        diary.add(DiaryEntry.new("title 0", "my friend is 07123456789"))
        phone_book = Phonebook.new(diary)
        expect(phone_book.extract_number).to eq [
            "07123456789"
        ]
    end
end