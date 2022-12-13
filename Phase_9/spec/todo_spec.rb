require 'Todo'

RSpec.describe 'Todo' do 
    it "the function adds tasks" do
        todo = Todo.new("task")
        expect(todo.task).to eq "task"
    end
end