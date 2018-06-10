# ## Ejercicio 7: Ejercicio completo con un hash
#
# Se tiene un hash con el inventario de un negocio de computadores.
#
# ~~~ruby
#
# ~~~
#
# Se pide:
#
# - Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
#
# - Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# 	- Ejemplo del input: "Pendrives, 100"
#
# - Si el usuario ingresa 2, **podrá eliminar** un item.
#
# - Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).
#
# - Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.
#
# - Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.
#
# - Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
#
# - El programa debe repertirse hasta que el usuario ingrese 7 (salir).


inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def menu(menu,option)
  if option == 1
    puts "Ingresar nuevo item y stock separado por una coma"
    item = gets.chomp()
    array = item.split(", ")
    product = array[0].to_sym
    stock = array[1].to_i
    menu[product]=stock
    print item
    puts ""
    puts "Nuevo inventario:"
    print menu
    print ""
  elsif option == 2
    puts "Ingrese el nombre del producto a eliminar"
    item = gets.chomp()
    puts item
    menu.each {|key, value| menu[key] = (value - 1) }
    puts "Nuevo inventario:"
    print menu
  elsif option == 3
    puts "Ingrese el nombre del producto que desea actualizar"
    product = gets.chomp().to_sym
    while menu.has_key?(product) != true
      puts "No existe ese producto, intente de nuevo:"
      product = gets.chomp().to_sym
    end
    puts "Información actual: #{product}: #{menu[product]}"
    menu.delete(product)
    puts "Ingrese nueva información de item y stock separados por una coma"
    item = gets.chomp()
    array = item.split(", ")
    product = array[0].to_sym
    stock = array[1].to_i
    menu[product]=stock
    puts "Nuevo inventario:"
    print menu
    print ""
  elsif option == 4
    sum = 0
    menu.each do |k, v|
      sum = sum + v
    end
    puts "Inventario total: #{sum} unidades entre #{menu.length} productos"
  elsif option == 5
    h = menu.max_by{|k, v| v}
    puts "El item con mayor stok es #{h}"
  elsif option == 6
    puts "Pregunte por existencia"
    product = gets.chomp().to_sym
    if  menu.has_key?(product) == true
      puts "Si"
    else
      puts "No"
    end
  end
end

option = 0
while option != 7
  puts ""
  puts "Bienvenidos, ingrese algunas de las siguientes opciones:
        1-. Ingresar productos
        2-. Eliminar productos
        3-. Actualzar productos
        4-. Ver stock
        5-. Ver producto con  mayor stock
        6-. Verificar stock
        7-. Salir"
  option = gets.chomp().to_i
  menu(inventario, option)
end
puts "Ha salido del programa"
