def trikampis_egzistuoja(a, b, c)
  return false unless a + b > c && b + c > a && c + a > b
  true
end

def trikampio_tipas(a, b, c)
  if a == b && a == c
    'Tai lygiakrastis trikampis'
  elsif a == b || a == c || b == c
    'Tai lygiasonis trikampis'
  else
    'Tai ivairiakrastis trikampis'
  end
end

def trikampio_plotas(a, b, c)
  p = a + b + c
  pus = p / 2
  cal1 = (pus - a) * (pus - b) * (pus - c)
  cal2 = pus * cal1
  s = Math.sqrt(cal2)
  s
end

puts 'Iveskite trikampio a,b ir c krastiniu ilgius'
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
if !trikampis_egzistuoja(a, b, c)
  puts 'Trikampis neegzistuoja'
else
  puts trikampio_tipas(a, b, c)
  s = trikampio_plotas(a, b, c)
  puts "Trikampio plotas yra: #{s}"
end
