# Find the largest palindromic number that is the
# product of two 3-digit numbers

# First lets put a boundary on the number set...
lower_bound = 100*100
puts "lower bound: #{lower_bound}"

upper_bound = 999*999
puts "upper bound: #{upper_bound}"

$palindromes = []
$palindrome_factors = []
$new_palindrome_factors = []

def is_palindrome?(string)
  string == string.reverse
end

def is_factor?(factor, multiple)
  if multiple % factor == 0
    return true
  else
    return false
  end
end

for n in (lower_bound..upper_bound)
  if is_palindrome?(n.to_s)
    $palindromes.push(n)
  end
end

def find_factors(palindrome)
  for n in (100..999)
    if is_factor?(n, palindrome)
      puts "#{palindrome} has a 3 digit factor: #{n}"
      puts "Dividing #{palindrome} by #{n} yields: "
      puts palindrome / n
      $palindrome_factors.push(palindrome / n)
    end
  end
end

for palindrome in $palindromes
  find_factors(palindrome)
end

for factor in $palindrome_factors
  if factor.to_s.length == 3
    $new_palindrome_factors.push(factor)
  end
end

puts $new_palindrome_factors

