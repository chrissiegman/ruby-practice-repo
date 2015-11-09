# Based of the Sieve of Eratosthenes

num_list = (2..100).to_a
$prime_list = []

while !num_list.empty?
  prime = num_list.first
  $prime_list << num_list.first
  num_list = num_list.delete_if{|x| x % prime == 0 }
end

puts $prime_list
