STEP 1 

Describe the problem here (what the user story is?)

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

- They want to input their music 
- They want to list all the tracks they have inputted

STEP 2

Design the class interface 

```ruby
class Music
    def initialize 

    end

    def add(text)

    end

    def list

    end
end
```


STEP 3

Create the examples of tests

- Nothing showing on the list - get the result of []
- one input on the list
- more than one input on the list.
- error message for duplicate input.

```ruby
require 'Music'

RSpec.describe "Music" do
    context "What happens when empty value is inputted" do
        it "returns []" do
            track = Music.new
            expect(track.list).to eq []
        end
    end
    context "What happens when one track is inputted" do
        xit "returns that track" do
            track = Music.new
            track.add("Let it be")
            expect(track.list).to eq ["Let it be"]
        end
    end
    context "What happens when more than one track is inputted" do
        xit "returns the list of tracks" do
            track = Music.new
            track.add("Let it be")
            track.add("Taxman")
            expect(track.list).to eq ["Let it be", "Taxman"]
        end
    end
    context "What happens if there is a duplicate input" do
        xit "return a fail" do
            track = Music.new
            track.add("Let it be")
            expect { track.add("Let it be") }.to raise_error "Error: duplicate input"
        end
    end
end
```

STEP 4

Inplement the behaviour and make the tests pass.