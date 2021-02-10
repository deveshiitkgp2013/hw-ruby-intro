# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   tot = 0
   arr.each do |i|
     tot = tot + i
    end
   
   return tot
  # YOUR CODE HERE
end

def max_2_sum arr
  # YOUR CODE HERE
   max1 = 0 
   max2 = 0 
   if !arr.any?
      max1 = 0
      max2 = 0
   
   elsif arr.count() == 1
		  max1 = arr[0]
		  
		
	 else 
		 max1 = arr.max()
		 arr.delete_at(arr.index(max1))
		 max2=arr.max()
		
	 end
	
	return max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.count()==0 or arr.count()==1
    return false
  end
  
  arr.each do |i|
    arr2 = arr
    arr2.delete_at(arr.index(i))
    if arr2.include?(n-i) 
      return true
    end
    
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.match(/^[a-zA-Z]/)
    if s.match(/^[aieouAEIOU]/)
      return false
    end
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s=='')
    
    return false
  end
  
  if not s.match(/[01]+/)
    
    return false
  end
  if(s.match(/^[10]*00$/) or s=='0')
    
    return true
  end
  
  return false
end

# Part 3

class BookInStock
	

	def initialize(isbn, price)
		if isbn == ''
			raise ArgumentError.new("String is empty")
		end
		if price <=0.0
			raise ArgumentError.new("Non Negative value expected");
		end
		@isbn = isbn
		@price = price
	end
	
	attr_accessor :isbn
	attr_accessor :price
	
	def price_as_string
		return "$"+'%.2f' % price.to_s
	end

end


