# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

current_number = 2 # 1 is not prime but 2 is. Start at 2.
prime_count = 1 # 2 is prime. Set the count at 1

def prime(value)
  (2..Math.sqrt(value)).each { |tweener| return false if value % tweener == 0 }
  true
end

until prime_count == 10001
  current_number += 1
  prime_count += 1 if prime(current_number)
end

puts "The 10001st prime number is #{current_number}"
