# Based of the Sieve of Eratosthenes

$numbers = (2..100).to_a
$prime_list = []

def filter_by_number(number)
  $numbers = $numbers.select { |n| n % number != 0}
  $prime_list.push(number)
end

for n in $numbers 
  filter_by_number($numbers.first)
end
puts $prime_list.compact

