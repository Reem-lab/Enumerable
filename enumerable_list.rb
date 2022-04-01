require_relative 'my_enumerable'

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
list_item.all? { |e| e < 5 }
list_item.all? { |e| e > 5 }

list_item.any? { |e| e == 2 }
list_item.any? { |e| e == 5 }

list_with_nil = MyList.new(1, 2, 3, 4, nil)
list_with_nil.all?
list_with_nil.any?

list_item.filter?(&:even?)
list_item.filter?

list_words = MyList.new('read', 'play', 'eat')
list_words.filter? { |word| word.length > 3 }
