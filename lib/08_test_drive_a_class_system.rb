# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo_list = []

  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    # Returns all non-done todos
    @todo_list.select{|todo| todo.task unless todo.done?}
  end

  def complete
    # Returns all complete todos
    @todo_list.select{|todo| todo.task if todo.done?} 
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.map{|todo| todo.mark_done!}
    return
  end
end

# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    # ...
    @task = task
    @complete = false
  end

  def task
    # Returns the task as a string
    @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @complete = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @complete
  end
end