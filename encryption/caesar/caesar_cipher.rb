$encrypted_array = []

def encrypt_string(string, shift)
  string_array = string.split(//)
  for letter in string_array
    $encrypted_array.push(encode_letter(letter, shift))
  end
  return $encrypted_array 
end

def encode_letter(letter, shift)
  zero_shift = 0
  if is_uppercase?(letter)
    zero_shift = 65
  elsif is_lowercase?(letter)
    zero_shift = 97
  else
    puts "Error, please enter upper or lowercase letters only."
    return
  end
    
  # finds ascii character for given letter
  ascii_code = letter.ord
  # shifts so code is on (0...26) index
  zeroed_code = ascii_code - zero_shift
  # shifts based on given parameter (w/ wraparound)
  shifted_zeroed_code = (zeroed_code + shift) % 26
  # shifts back to ascii
  final_code = shifted_zeroed_code + zero_shift
  final_char = final_code.chr
  return final_char 
end

def is_uppercase?(letter)
  if letter.ord >= 65 && letter.ord <= 90
    return true
  else
    return false
  end
end

def is_lowercase?(letter)
  if letter.ord >= 97 && letter.ord <= 122
    return true
  else
    return false
  end
end

puts encrypt_string('nancy', 5).join('')
