# To change this template, choose Tools | Templates
# and open the template in the editor.



=begin
puts "Hello World"
a = [1,2,3]
puts a.count
a[5..8] = 4, 5
p a

=end

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)")

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  p counts.sort_by { |word, count| count }
  counts
end

p count_frequency(["hoho", "haha", "the"])

square = "blablabla"

[1, 2].each do |value, square|
  square = value * value
  p square
end
sleep 0.5
p square

p list = ["H", "A", "L"]
list.each {|x| puts x.succ}
p list.map {|x| x.succ}
#p ["H", "A", "L"].collect {|x| x.succ}

f = File.open("../test.txt")
f.each_with_index do |line, index|
  puts "Line #{index+1}: #{line}"
end