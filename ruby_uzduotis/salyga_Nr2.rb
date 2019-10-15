def chain_recursion(num, x, level)
	if num<256
		new_num=chain_recursion(num*2,x,level+1)
		if level>1
			num=(x*x)+(num/new_num)
		else
			num=num/new_num
		end
	else
		return num/(x*x)
	end
	return num
end

def chain_cycle(x)
	num=256
	new_num=(x*x)+num/(x*x)
	num=num/2
	while  1<num		
		new_num=(x*x)+num/new_num
		num=num/2
	end
	new_num=num/new_num
	return new_num
end

puts "Iveskite skaiciu x grandininei funkcijai (ciklas)"
x = gets.chomp().to_f
puts "Atsakymas naudojant cikla"
puts (chain_cycle(x))

puts "Iveskite skaiciu x grandininei funkcijai (rekursija)"
x= gets.chomp().to_f
puts "Atsakymas naudojant rekursija"
puts(chain_recursion(1.0, x, 1.0))