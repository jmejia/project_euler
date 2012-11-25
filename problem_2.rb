@fibs = [1, 2]
@previous = 1
@current = 2

def generate_fibs(previous, current)
  @fibs << previous + current
  @previous = current
  @current = @fibs.last
end

while @current < 4000000
  generate_fibs(@previous, @current)
end

@fibs.pop
@fibs.delete_if { |fib| fib.odd? }
puts @fibs.inject(:+)