class MyList
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
