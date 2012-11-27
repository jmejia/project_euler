# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

palindromes = []

def palindrome?(value)
  value.to_s == value.to_s.reverse ? true : false
end

999.downto(100) do |num|
  999.downto(100) do |num2|
    palindromes << num*num2 if palindrome?(num*num2)
  end
end

puts "The largest palindrome made from the product of two 3-digit numbers is #{palindromes.sort.last}"
