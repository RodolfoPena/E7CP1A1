meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

def new_hash_key_strings(a, b)
  h = Hash[a.zip b]
end
puts "1-.Meses como llave y ventas como valor:"
print new_hash_key_strings(meses,ventas)

puts ""
puts "2-a. Invertir llaves y valores"
print new_hash_key_strings(ventas,meses)
puts ""
print new_hash_key_strings(meses,ventas).invert

def mes_con_mayor_venta(hash)
  hash.max_by{ |k, v| k }
end
puts ""
puts "2-b. Obetener el mes con mayor cantidad de ventas (con hash invertido)"
print mes_con_mayor_venta(new_hash_key_strings(ventas,meses))
