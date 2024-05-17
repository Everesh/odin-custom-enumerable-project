module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    self.my_each do |item|
      yield(item, index)
      index += 1
    end
  end

  def my_select
    out = []
    self.my_each { |item| out.push(item) if yield(item) }
    out
  end

  def my_all?
    self.my_each do |item|
      return false unless yield(item)
    end
    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for item in self
      yield(item)
    end
  end
end
