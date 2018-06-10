puts "Parte 1"
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |producto, valor| puts producto }
puts "Parte 2"
productos["cereal"] = 2200
print productos
puts ""
puts "Parte 3"
productos["bebida"] = 2000
print productos
puts ""
puts "Parte 4"
array = productos.to_a
print array
puts ""
puts "Parte 5"
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.delete("galletas")
print productos
