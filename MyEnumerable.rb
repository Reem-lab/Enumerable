module MyEnumerable
  def all? 
    state = true
    unless block_given?
      each { |obj| state = false unless obj }
      return state
    end
    each { |n| state = false unless yield n }
    state
  end

  def any?
    state = false
    unless block_given?
      each { |item| state = true if item}
      return state
    end
    each { |n| state = true if yield n}
    state
  end

  def filter?
    state = []
    unless block_given?
      each { |n| state.push(n) }
      return state
    end
    each { |x| state.push(x) if yield x }
  end
end


