require '05_test_drive_a_class'

lorem_ipsum = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi ! repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!"


# RSpec.describe DiaryEntry do
#   context "Tests the getters for a diary entry" do
#     diary_entry = DiaryEntry.new("Today", "Hello World")
#     it "returns 'Today' when title is called" do
#       expect(diary_entry.title).to eq 'Today'
#     end 
#     it "returns 'Hello World' when contents is called" do 
#       expect(diary_entry.contents).to eq "Hello World"
#     end 

#   end 
#   context "Tests for the count_words method" do 

#     it "returns 2 when count_words is called" do
#       diary_entry = DiaryEntry.new("Today", "Hello World")
#       expect(diary_entry.count_words).to eq 2
#     end 
#     it "returns 2 when count_words is called on 'Hello , World'" do
#       diary_entry = DiaryEntry.new("Today", "Hello , World")
#       expect(diary_entry.count_words).to eq 2
#     end 
#   end 


#   context "Tests for reading_time method" do
#     it "returns 1 when reading_time is called and wpm = 200 and contents = lorem_ipsum" do
#       diary_entry = DiaryEntry.new("Today", lorem_ipsum)
#       expect(diary_entry.reading_time(200)).to eq 1
#     end

#     it "returns 2 when reading_time is called and wpm = 150 and contents = lorem_ipsum" do 
#       diary_entry = DiaryEntry.new("Today", lorem_ipsum)
#       expect(diary_entry.reading_time(150)).to eq 2
#     end 
#     it "returns 0 when reading_time is called and wpm = 150 and contents = '' " do 
#       diary_entry = DiaryEntry.new("Today", "")
#       expect(diary_entry.reading_time(150)).to eq 0
#     end 

#   end 


# end 
# RSpec.describe GrammarStats do
#   context "checks 'Lorem ipsum dolor sit amet consectetur adipisicing elit.' text" do
#   text = "Lorem ipsum dolor sit amet consectetur adipisicing elit." 
#   gc = GrammarStats.new
#   it  "returns true when check is called on text" do
#     expect(gc.check(text)).to eq true
#   end 
#   it  "returns fail when check is called on text" do
#     expect(gc.check(text+'l')).to eq false
#   end 
# end   
#   it "returns 55 when percentage_good is called" do 
#     text = "Lorem ipsum dolor sit amet consectetur adipisicing elit." 
#     gc = GrammarStats.new
#     for i in (0...55)
#       gc.check(text)
#     end 
#     for i in (0...45)
#       gc.check(text+"H") 
#     end 

#     expect(gc.percentage_good).to eq 55
#   end 



# end 
