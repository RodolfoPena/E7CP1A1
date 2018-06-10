restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts ""
puts "1-. Obtener el plato mas caro"

def plato_mas_caro (hash)
  hash.max_by{ |k, v| v}
end

print plato_mas_caro(restaurant_menu)

puts ""
puts "2-.Obtener el plato mas barato"

def plato_mas_barato(hash)
  hash.min_by{ |k, v| v}
end

print plato_mas_barato(restaurant_menu)

puts ""
puts "3-.Sacar el promedio del valor de los platos."

def precio_promedio(hash)
  sum = 0
  hash.each do |k, v|
    sum += v
  end
  sum/hash.length
end

print precio_promedio(restaurant_menu)

puts ""
puts "4-. Crear un arreglo con solo los nombres de los platos."

def arreglo_platos(hash)
  array = Array.new()
  hash.each do |k, v|
    array.push(k)
  end
  array
end

print arreglo_platos(restaurant_menu)

puts ""
puts "5-.Crear un arreglo con solo los valores de los platos."

def arreglo_precios(hash)
  array = Array.new()
  hash.each do |k, v|
    array.push(v)
  end
  array
end

print arreglo_precios(restaurant_menu)

puts ""
puts "6-. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)."

def platos_con_iva(hash)
  iva = 1.19
  return hash.each { |k, v| hash[k] = v*iva}
end

print platos_con_iva(restaurant_menu)

puts ""
puts "7-.Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra."

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def descuentos_por_plato(hash)
  dcto = 0.8
  hash.each { |k, v| hash[k] = v*dcto if k.count(" ") >= 1}
end

print descuentos_por_plato(restaurant_menu)
