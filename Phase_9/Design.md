
STEP 1 

Describe the problem here (what the user story is?)

As a user 
So that I can record my experiences 
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries 

As a user
So that I can reflect on my experiences in my busy day 
I want to select diary entries to read based on how much time I have and my reading speed 

As a user
So that I can keep track of my tasks 
I want to keep a todo list along with my diary 

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries ]

┌───────────────┐            ┌────────────────┐        ┌────────────────┐
│ Todo          │            │  Diary         │        │  Phonebook     │
│               │            │                │        │                │
│ init(task)    │            │  add entries   │◄───────┤  init(diary    │
│               │            │                │        │                │
│               │            │ list entries   │        │  contact       │
│               │            │                │◄──┐    │                │
└──────▲────────┘            └──────▲─────────┘   │    └────────────────┘
       │                            │             │
       │                            │             │
 ┌─────┴────────┐             ┌─────┴─────────┐   │     ┌───────────────┐
 │ TodoList     │             │ DiaryEntry    │   │     │ DiaryReader   │
 │              │             │               │   └─────┤               │
 │  add todo    │             │ init(tit,cont)│         │ reader(wpm,diary)
 │              │             │               │         │               │
 │  list todo   │             │ title         │         │ readable_txt  │
 │              │             │               │         │               │
 └──────────────┘             └─content───────┘         └───────────────┘


STEP 2

Design the class interface 
```ruby
class Todo
  def initalize(task) #task is a string
  
  end
end

class TodoList

    def initalize
    #,,,,,,,,,
    end

    def add(Todo) #is an instance of Todo class
    #,,,,,,,,,
    end

    def list
    #,,,,,,,,, #returns a list of all the task
    end
    
end


class Diary 
  def initalize
    #,,,,,,,,,,
  end
  
  def add(entries) #entries is string
    #adds entries 
  end

  def list
    # return list of all entries 
  end
end


class  DiaryEntry

  def initalize(title, content) #title and content are both strings 

  end

  def title
    #returns title 
  end

  def content
    #returns content
  end
end


class PhoneBook
  def initalize(diary) #intialize with diary class title 
  
  end
  
  def contacts
    #returns a string representing the phone numbers - that's in all diary entries.
  end
end


class DiaryReader

  def initalize(wpm, diary)

  end

  def readable_text(time)
    #returns an instance of diary entry that is can be read in the time inputted.
  end

  def count_words

  end

end
```


STEP 3

Create the examples of tests
```ruby


#1

diary = Diary.new
entry1 = DiaryEntry.new("my title", "my contents")
entry2 = DiaryEntry.new("my title2", "my contents2")
diary.add(entry1)
diary.add(entry2)
expect(diary.list).to eq [entry1, entry2]

#2

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
expect(diary_reader.readable_text(4)).to eq entry3  

#3

diary = Diary.new
phone_number = PhoneBook.new
entry1 = DiaryEntry.new("my title", "07000000000")
diary.add(entry1)
expect(phone_number.contacts).to eq ["07000000000"]

#4
todo = Todo.new
expect(todo("task")).to eq "task"


#5
todo1 = Todo.new("task1")
todo2 = Todo.new("task2")
todo_list = TodoList.new
todo_list.add(todo1)
todo_list.add(todo2)
expect(todo_list.list).to eq ["task1", "task2"]

```
STEP 4

Inplement the behaviour and make the tests pass.