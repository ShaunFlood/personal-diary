require 'TodoList'
require 'Todo'

RSpec.describe 'to do list' do
    it "adds a task to a viewable list" do
        todo1 = Todo.new("task1") 
        todo2 = Todo.new("task2")
        todo_list = TodoList.new
        todo_list.add(todo1)
        todo_list.add(todo2)
        expect(todo_list.list).to eq [todo1, todo2]
    end
end