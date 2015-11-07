string = 'XYZ'
string_array = string.split(//)
char_code_array = []
scaled_array = []
shift = 3
shifted_scaled_code_array = []
final_code_array = []
final_char_array = []


for i in (0...string.length) 
  char_code_array.push(string_array[i].ord)
end

for code in char_code_array
  scaled_array.push(code - 65)
end

for code in scaled_array 
  shifted_scaled_code_array.push((code + shift) % 26)
end

#puts string_array
#puts '-' * 10
#puts char_code_array
#puts '-' * 10
#puts scaled_array
#puts '-' * 10
#puts final_code_array

for code in shifted_scaled_code_array
  final_code_array.push(code + 65)
end

for code in final_code_array
  final_char_array.push(code.chr)
end

puts string_array.join
puts '-' * 10
puts final_char_array.join

