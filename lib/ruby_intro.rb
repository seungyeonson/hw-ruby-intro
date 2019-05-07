# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort! {|x,y| y<=>x}
  return arr[0] + arr[1]
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr.empty?
  arr2=arr.combination(2).to_a
  arr3=[]
  arr2.each do |x|
    arr3.push(sum(x))
  end
  return arr3.include? n    
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant?(s)
  if /^[^aeiou\W]/i.match(s) ==nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  return true if s == 'yes' || s =='0'
    return /^[10]*00$/.match(s) !=nil
end
#raise 'true' unless binary_multiple_of_4?('yes') 

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty?
      raise(ArgumentError)
    end
    if price<=0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  def price
    return @price
  end
  def isbn
    return @isbn
  end
  def isbn= (isbn)
    @isbn = isbn
  end
  def price= (price)
    @price = price
  end
  def price_as_string
    return "$%.2f" % [@price]
  end
end
