# If we list all the natural numbers below 10 that are
# multiples of 3 or 5, we get 3, 5, 6, and 9. The sum
# of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

array = (1...1000)
$multiples = []

def is_multiple?(multiple, factor)
  if multiple % factor == 0
    return true
  else
    return false
  end
end

def find_multiples(array, factor)
  array.each do |number|
    if is_multiple?(number, factor)
      $multiples.push(number)
    end
  end
end

find_multiples(array, 3)
puts $multiples
puts '-' * 10
find_multiples(array, 5)
puts $multiples
puts '-' * 10
puts $multiples.uniq!
puts '-' * 10

puts $multiples.inject(:+)
