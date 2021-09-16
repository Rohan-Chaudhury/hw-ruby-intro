# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_arr=0
  if arr.count>0
    for i in 0...arr.count do
      sum_arr=sum_arr+arr[i]
    end
  end
  
  return sum_arr
    
  
end

def max_2_sum arr
  # YOUR CODE HERE
  sum_max_2=0
  if arr.count==1
    sum_max_2= arr[-1]
  elsif arr.count>1
    sorted_array=arr.sort
    sum_max_2= sorted_array[-1] + sorted_array[-2]
  end
  
  return sum_max_2
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  hash_dict={}
  
  if arr.count==0
    return false
  else
    for i in 0...arr.count do
      if hash_dict.has_key?(n-arr[i])
        return true
      else
        hash_dict[arr[i]]=true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+ name
end


def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length>0
    lower_case_s=s.downcase
    vowels=["a","e","i","o","u"]
    if vowels.include?lower_case_s[0]
      return false
    elsif lower_case_s[0].match?(/[A-Za-z]/)
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
    return false
  else
    for i in 0...s.length do
      if !s[i].match(/[0-1]/)
        return false
      end
    end
  end
  
  int_value=s.to_i(2)
  if int_value%4==0
    return true
  end

end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn=isbn
    @price=price
    
    if isbn=="" or price<=0
      raise ArgumentError
    end
  end
  
  def price_as_string
    float_price=price.to_f
    string_price="$"+"%.2f" % float_price
    return string_price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn_new)
    @isbn=isbn_new
  end
  
  def price=(price_new)
    @price=price_new
  end
  
end
