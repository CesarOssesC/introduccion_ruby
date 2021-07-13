a = [1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8 ,8, 9, 86, 75, 75, 56]
a.split.chomp.to_i

puts "Elige una opción: suma, resta, pares, impares, mayor, menor"
opcion : gets.chomp

when opcion == "suma"
    