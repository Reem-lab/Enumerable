require './MyEnumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
      @list.each do |ele|
        yield ele if block_given? #B
      end
  end
end

list_item = MyList.new(1, 2, 3, 4)
list_item.each
puts list_item.all? { |n| n <= 4 }
list_words = MyList.new('read', 'play', 'eat')
puts list_words.filter?


