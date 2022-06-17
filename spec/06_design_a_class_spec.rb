require '06_design_a_class'

RSpec.describe TodoManager do
  context "Hair,Nails passed as arguments to todo" do
    todo = TodoManager.new()
    todo.task_list = []
    todo.add("Hair","Nails")
    it "returns ['Hair','Nails'] when task_list is called" do
      expect(todo.task_list).to eq ['Hair','Nails']
    end 
    it "checks uniqueness of add inputs: returns ['Hair','Nails'] when task_list is called after a duplicate entry of 'Hair' is added to the task_list" do
      todo.add("Hair")
      expect(todo.task_list).to eq ['Hair','Nails']
    end 
    it "returns [] when task_list is called after 'Hair' and 'Nails' are completed'" do
        todo.complete('Hair','Nails')
        expect(todo.task_list).to eq []
    end
  end 
end 
