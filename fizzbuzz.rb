for i in (1..100)
	i_string = i.to_s + ": "
	if i.to_int % 3 == 0
		i_string += "fizz"
	end
	if i.to_int % 5 == 0
		i_string += "buzz"
	end
	puts i_string
end



