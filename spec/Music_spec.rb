require 'Music'

RSpec.describe Music do
    context "What happens when nothing is entered." do
        it "Returns []" do
        tracks = Music.new
        expect(tracks.list).to eq []
        end
    end
    context "What happens when we add one track." do
        it "Returns the track" do
            tracks = Music.new
            tracks.add("Let it be")
            expect(tracks.list).to eq ["Let it be"]
        end
    end
    context "What happens when there is multiple tracks inputted" do
        it "Returns the multiple tracks" do
            tracks = Music.new
            tracks.add("Let it be")
            tracks.add("Taxman")
            tracks.add("Blackbird")
            expect(tracks.list).to eq ["Let it be", "Taxman", "Blackbird"]
        end
    end
end