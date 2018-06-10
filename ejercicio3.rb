
h = {"x": 1, "y":2}

puts "Agregar"
h[:z] = 3
print h
puts ""
puts "Cambiar"
h[:x] = 5
print h
puts ""
puts "Eliminar"
h.delete(:y)
print h
puts ""
puts "Si yeahh"
h.each do |k,v|
  puts 'yeahh' if k==:z
end
puts "Invertir"
w = h.invert
print w
