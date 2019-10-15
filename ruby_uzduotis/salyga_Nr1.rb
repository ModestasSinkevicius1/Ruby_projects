def  trikampis(a, b, c)
	if a+b>c && b+c>a && c+a>b
		if a==b && a==c
			puts "Tai lygiakrastis trikampis"
		elsif a==b || a==c || b==c	
			puts "Tai lygiasonis trikampis"
		else
			puts "Tai ivairiakrastis trikampis"
		end
		p = a+b+c
		pus=p/2
		cal1=(pus-a) * (pus-b) * (pus-c)
		cal2=pus*cal1
		s=Math.sqrt(cal2)
		puts "Trikampio plotas yra: #{s}"
	else
		puts "Neegzistuoja tokio trikampio"
	end
end

puts "Iveskite trikampio a,b ir c krastiniu ilgius"
a = gets.chomp().to_f
b = gets.chomp().to_f
c = gets.chomp().to_f
puts (trikampis(a, b, c))