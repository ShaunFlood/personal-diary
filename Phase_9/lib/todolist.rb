class TodoList

    def initialize
        @list = []
    end

    def add(todo) #is an instance of Todo class
        @list << todo
    end

    def list
        @list
    end
end