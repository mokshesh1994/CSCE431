# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
   return 0
  else
    s=0
    arr.each {|item| s+=item}
    return s
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
=begin
   if arr.empty?
    return true if n == 0
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end

  return false
=end  

!!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
   s[0] =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A(?=[a-z])/i
    return false
  elsif s.length < 2
    s.eql? "0"
  else
    s[s.length-2..s.length-1].eql? "00"
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
    if isbn.nil? || isbn.empty? || price <= 0
      raise ArgumentError.new("Invalid")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(newIsbn)
    @isbn = newIsbn
  end
  
  def price=(newPrice)
    @price = newPrice
  end
  
  def price_as_string
    count = 0
    pr = @price
    while pr != pr.to_i
      count += 1
      pr *= 10
    end
    if count == 0
      "$" + @price.to_s + ".00"
    elsif count != 2
      "$" + @price.to_s + "0"
    else 
      "$" + @price.to_s
    end
  end
end
