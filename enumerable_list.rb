require './MyEnumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
      @list.each do |ele|
        yield ele if block_given?
      end
  end
end

list_item = MyList.new(1, 2, 3, 4)
list_item.each
puts list_item.all? { |e| e < 5}
puts list_item.all? { |e| e > 5}

puts list_item.any? { |e| e == 2}
puts list_item.any? { |e| e == 5}

list_with_nil = MyList.new(1,2,3,4,nil)
puts list_with_nil.all?
puts list_with_nil.any?

print list_item.filter? { |e| e.even?} 
puts "\n"
print list_item.filter?
puts "\n"

list_words = MyList.new('read', 'play', 'eat')
print list_words.filter? { |word| word.length > 3 }
puts "\n"
