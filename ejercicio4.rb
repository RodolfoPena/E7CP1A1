personas = [ 'Carolina', 'Alejandro', 'MariaJesus', 'Valentin']
edades = [32, 28, 41, 19]

def new_hash_symbol_keys(a, b)
  h = Hash[a.zip b]
  h = h.inject({}) { |memo, (k, v)| memo[k.to_sym] = v; memo }
end

personas_hash = new_hash_symbol_keys(personas, edades)
puts "1-. Hash con personas"
print personas_hash

def average(hash)
  sum = 0
  hash.each { |k, v| sum += v }
  sum/hash.length
end
puts ""
puts "2-.Promedio de edades"
print average(personas_hash)
