#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO.
require 'task_checker'

RSpec.describe "testing the task checker" do
    context "text contains #TODO" do
        it "returns true" do
            result = task_checker("#TODO")
            expect(result).to eq true
        end
    end
    context "text doesn't contain #TODO" do
        it "returns false" do
            result = task_checker("abcd")
            expect(result).to eq false
        end
    end
    context "interger is entered" do
        it "returns false" do
            result = task_checker(1)
            expect(result).to eq false
        end
    end
end