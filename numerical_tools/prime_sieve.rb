# Based of the Sieve of Eratosthenes
# Finds all primes less than or equal to n

upper_bound = ARGV.first.to_i

def get_primes(upper_bound)
  num_list = (2..upper_bound).to_a
  prime_list = []

  loop do
    prime = num_list.first
    prime_list << num_list.first
    num_list = num_list.delete_if{|x| x % prime == 0 }
    break if num_list.empty?
  end
  return prime_list

end

print get_primes(upper_bound)
print "\n"
