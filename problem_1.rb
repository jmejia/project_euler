multiples = []

(1..999).each do |number|
  if number % 3 == 0 || number % 5 == 0
    multiples << number
  end
end

puts "The sum of all the multiples of 3 or 5 below 1000 is #{multiples.inject(:+)}"
