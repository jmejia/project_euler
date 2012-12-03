# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

factors = []
number = 600851475143

def prime?(value)
  (2..Math.sqrt(value)).each { |tweener| return false if value % tweener == 0 }
  true
end


(2..Math.sqrt(number)).each do |tweener|
  if number % tweener == 0 && prime?(tweener)
    factors << tweener
  end
end

puts "The largest prime factor of 600851475143 is #{factors.last}"
