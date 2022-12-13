require 'diary_entry'

RSpec.describe DiaryEntry do
    context "When we enter a title" do
        it "should return that title" do
            entry = DiaryEntry.new("title", "content")
            expect(entry.title).to eq "title"
            expect(entry.content).to eq "content"
        end
    end
end