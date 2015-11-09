# Find the biggest prime factor of 600851475143
# This is not an optimal solution but it works for this number
require 'prime'

# make a list of primes that we "hope" is big enough
$primes = Prime.take(10000)

$n = 997799
$factors = []


def filter_prime_factors(number)
  for prime in $primes
    if $n % prime == 0
      $n = $n / prime
      $factors.push(prime)
    end
  end
end

def factor
  100.times do
    filter_prime_factors($n)
  end
end

if $n != 1
  factor
else
  puts "done"
end

puts "new_number: #{$n}"
puts "factors: #{$factors}"





