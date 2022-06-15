# A method called count_words that takes a string as an argument and returns the number of words in that string.
require 'count_words'

RSpec.describe 'count_words method' do
  context 'tests when input is a string' do 
    it "tests when a string of 0 words but spaces '  ' is passed, returns 0" do
      expect(count_words('  ')).to eq 0
    end 
    it "tests when a string of 0 characters '' is passed, returns 0" do 
      expect(count_words('')).to eq 0
    end 
    it "tests when a string of 5 words 'Hello World, I am Shaun' is passed, returns 5" do
      expect(count_words('Hello World, I am Shaun' )).to eq 5
    end 
    it "tests when a string of 5 words with double spacing 'Hello  World,  I  am  Shaun' is passed, returns 5" do
      expect(count_words('Hello  World,  I  am  Shaun')).to eq 5
    end
  end 
  it "test when input is two arguments of string (' ', 'hello world'), throws an ArgumentError" do
    expect{count_words(' ', 'hello world')}.to raise_error(ArgumentError)
  end
  it "test when input is numeric '123456', throws a TypeError" do
    expect{count_words(123456)}.to raise_error(TypeError)
  end 
  it "tests when input is an array [1,2,3,4,5], throws a TypeError" do
    expect{count_words([1,2,3,4,5])}.to raise_error(TypeError) 
  end 

end