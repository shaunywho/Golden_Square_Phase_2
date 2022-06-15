# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.
require "make_snippet"

RSpec.describe "make_snippet" do
  context "test when argument is a string" do
    it "test when there are less than five words in string 'hello world', returns 'hello world..." do
      expect(make_snippet('hello world')).to eq 'hello world...'
    end
    it "test when there are five words in string 'hello world, how are you?', returns 'hello world how are you?...'" do
      expect(make_snippet('hello world, how are you?')).to eq 'hello world, how are you?...'
    end 
    it "test when there are more than five words in string 'hello world, how are you? I'm good', returns 'hello world, how are you?...'" do
      expect(make_snippet("hello world, how are you? I'm good...")). to eq "hello world, how are you?..."
    end 
  end
end 

