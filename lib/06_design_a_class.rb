# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.
# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TodoManager
  attr_accessor :task_list, :task_complete
  def initialize
    self.task_list = []
    self.task_complete = []
  end

  def add(*tasks)
    tasks.each{|task| self.task_list+=[task] unless self.task_list.include?(task)}
  end

  def complete(*tasks)
    tasks.each do |task|
      if self.task_list.include?(task)
      self.task_list-=[task]
      self.task_complete+=[task]
      end 
    end 
  end 
end 










