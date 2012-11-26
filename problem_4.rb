palindromes = []

def palindrome?(value)
  return true if value.to_s == value.to_s.reverse
  false
end

999.downto(100) do |num|
  999.downto(100) do |num2|
    palindromes << num*num2 if palindrome?(num*num2)
  end
end

puts "The largest palindrome made from the product of two 3-digit numbers is #{palindromes.sort.last}"
