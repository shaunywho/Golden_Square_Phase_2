require 'read_time_estimate'
require 'csv'

test_data = Array((1..400))


RSpec.describe "read_time_estimate method" do
  it 'returns 0 when given an empty string' do
    expect(read_time_estimate(test_data[0...0].join(' '))).to eq 0
  end 
  it 'returns 1 when given a string of 200 words' do
    expect(read_time_estimate(test_data[0...200].join(' '))).to eq 1
  end 
  it 'returns 1.005 when given a string of 201 words' do
    expect(read_time_estimate(test_data[0...201].join(' '))).to eq 1.005
  end 
end 


