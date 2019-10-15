def elektros_saskaita(kiekis)
    stop = true
    up = 1.0
    kW=0.0

    while stop
    
        if kiekis>=50*up
            kW+=0.5
        else 
			stop = false
		end
		
        if kiekis>=100*up
            kW+=0.75
            if up > 1
                kW+=1.20
			end
        end
		
        if kiekis>=250*up
            kW=0.2*(kW+1.50)
		end
		
        up=up+1
    end
	
	puts "#{kW} eur/kW"
	
end

puts "Iveskite sunaudotos elektros energijos kieki: "
kiekis=gets.chomp().to_f
puts(elektros_saskaita(kiekis))