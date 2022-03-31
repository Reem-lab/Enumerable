module MyEnumerable
  def all? #A
    state = true
    unless block_given?
      each { |obj| state = false unless obj}
      return state 
    end
    each { |n| state=false unless yield n}
    state
  end
end 
