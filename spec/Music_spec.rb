require 'Music'

RSpec.describe "Music" do
    context "What happens when empty value is inputted" do
        it "returns []" do
            track = Music.new
            expect(track.list).to eq []
        end
    end
    context "What happens when one track is inputted" do
        it "returns that track" do
            track = Music.new
            track.add("Let it be")
            expect(track.list).to eq ["Let it be"]
        end
    end
    context "What happens when more than one track is inputted" do
        it "returns the list of tracks" do
            track = Music.new
            track.add("Let it be")
            track.add("Taxman")
            expect(track.list).to eq ["Let it be", "Taxman"]
        end
    end
    context "What happens if there is a duplicate input" do
        it "return a fail" do
            track = Music.new
            track.add("Let it be")
            expect { track.add("Let it be") }.to raise_error "Error: duplicate input"
        end
    end
end