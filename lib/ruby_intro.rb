# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  result = 0
  arr.each { |x| result += x }
  return result
end

def max_2_sum arr
  if (arr.length == 0)
    return 0
  elsif (arr.length == 1)
    return arr.at(0)
  else
    return sum(arr.sort.drop(arr.length - 2))
  end
end

def sum_to_n? arr, n
  sorted = arr.sort
  low = 0
  high = arr.length - 1
  
  while (low < high)
    attempt = sorted[low] + sorted[high]
    if (attempt == n)
      return true
    elsif (attempt < n)
      low += 1
    else
      high -= 1
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return (/^[a-z&&[^aeiou]]/i =~ s) != nil
end

def binary_multiple_of_4? s
  begin
    return Integer(s, 2) % 4 == 0
  rescue
    return false
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty string' unless isbn.length > 0
    raise ArgumentError, 'Price cannot be negative or free' unless price > 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % [@price]
  end
  
  def isbn
    return @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    return @price
  end
  
  def price=(new_price)
    @price = new_price
  end
end
