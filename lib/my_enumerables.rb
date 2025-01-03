module Enumerable
  # Your code goes here
  def my_each_with_index
    counter = 0
    self.my_each do 
      yield [self[counter], counter]
      counter += 1
    end
  end

  def my_select(&blk)
    temp_array = Array.new
    if block_given?
      self.my_each do |value|
        if blk.call(value) == true
          temp_array << value
        end
      end
      return temp_array
    else
      return
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    counter = 0
    self.size.times do
      yield self[counter]
      counter += 1
    end
    self
  end
end
