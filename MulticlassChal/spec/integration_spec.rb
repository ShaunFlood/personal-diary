require 'todo_list'
require 'todo'

RSpec.describe TodoList do
    context "when we add a task" do 
        it "adds it to the list" do
            list = TodoList.new
            task = Todo.new("task")
            list.add(task)
            expect(list.give_up!).to eq [task]
        end
    end
        it "adds multiple task to the list" do
            list = TodoList.new
            task1 = Todo.new("task1")
            task2 = Todo.new("task2")
            list.add(task1)
            list.add(task2)
            expect(list.give_up!).to eq [task1, task2]
         end
    context "If one task is complete, but the other is not" do
        it "should return the complete task" do
            list = TodoList.new
            task1 = Todo.new("task1")
            task2 = Todo.new("task2")
            task1.mark_done!
            list.add(task1)
            list.add(task2)
            expect(list.complete).to eq [task1]
        end
    end
    context "constructs" do
        it "should return the failed task" do
            list = TodoList.new
            task1 = Todo.new("task1")
            task2 = Todo.new("task2")
            task1.mark_done!
            list.add(task1)
            list.add(task2)
            expect(list.incomplete).to eq [task2]
        end
    end
end
