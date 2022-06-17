require '08_test_drive_a_class_system'

RSpec.describe "integration: " do
  context "when task is added" do
    it "returns incomplete todo" do
      todo_list = TodoList.new
      todo_task = Todo.new("Homework")
      todo_list.add(todo_task)
      expect(todo_list.incomplete).to eq [todo_task]

    end 

    it "returns complete todo when todo is set to complete" do
      todo_list = TodoList.new
      todo_task = Todo.new("Homework")
      todo_list.add(todo_task)
      todo_task.mark_done!
      expect(todo_list.complete).to eq [todo_task]
    end 


  end 

  context "when multiple tasks are added" do
    it "returns all todos as incomplete" do
      todo_list = TodoList.new
      todo_task_1 = Todo.new("Homework")
      todo_task_2 = Todo.new("Walk")
      todo_list.add(todo_task_1)
      todo_list.add(todo_task_2)
      expect(todo_list.incomplete).to eq [todo_task_1,todo_task_2]

    end 
    it "returns one todo as incomplete when mark_done! is called on one" do
      todo_list = TodoList.new
      todo_task_1 = Todo.new("Homework")
      todo_task_2 = Todo.new("Walk")
      todo_list.add(todo_task_1)
      todo_list.add(todo_task_2)
      todo_task_1.mark_done!
      expect(todo_list.incomplete).to eq [todo_task_2]
    end 

    it "returns one todo as complete when mark_done! is called on one" do
      todo_list = TodoList.new
      todo_task_1 = Todo.new("Homework")
      todo_task_2 = Todo.new("Walk")
      todo_list.add(todo_task_1)
      todo_list.add(todo_task_2)
      todo_task_1.mark_done!
      expect(todo_list.complete).to eq [todo_task_1]
    end 

    it "returns all tasks as complete when give_up! is called" do
      todo_list = TodoList.new
      todo_task_1 = Todo.new("Homework")
      todo_task_2 = Todo.new("Walk")
      todo_list.add(todo_task_1)
      todo_list.add(todo_task_2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_task_1,todo_task_2]
    end 


  end 

end 

RSpec.describe TodoList do
  context "initially" do
    it "returns empty list of incomplete tasks" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
    it "returns empty list of complete tasks" do
      todo_list = TodoList.new
      expect(todo_list.complete).to eq []
    end
  end
end 

RSpec.describe Todo do
  context "initially" do
    it "returns task" do
      task = "Homework"
      todo_task = Todo.new(task)
      expect(todo_task.task).to eq task
    end 
  end 

  it "returns incomplete when a task is added and done? is called" do
    task = "Homework"
    todo_task = Todo.new(task)
    expect(todo_task.done?).to eq false
  end 

  it "returns complete when a task is set to complete" do
    task = "Homework"
    todo_task = Todo.new(task)
    todo_task.mark_done!
    expect(todo_task.done?).to eq true
  end 

end

