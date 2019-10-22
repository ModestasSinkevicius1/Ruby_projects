def elektros_saskaita(kiekis)
  k_w = elektros_saskaita_nustatymas(kiekis)
  k_w
end

def elektros_saskaita_nustatymas(kiekis, stop = true, up = 1.0, k_w = 0.0)
  while stop
    if kiekis >= 50 * up
      k_w += 0.5; else stop = false
    end
    if kiekis >= 100 * up
      k_w += 0.75
      k_w += 1.20 if up > 1
    end; k_w = 0.2 * (k_w + 1.50) if kiekis >= 250 * up
    up += 1
  end; k_w
end

puts 'Iveskite sunaudotos elektros energijos kieki: '
kiekis = gets.chomp.to_f
kilovatu = elektros_saskaita(kiekis)
puts "#{kilovatu} eur/kW"
