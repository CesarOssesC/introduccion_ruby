serie_1 = {
    nombre: "Sweet Tooth",
    formato: "Serie",
    temporadas: "1",
    duracion: "8 Capítulos",
    sinopsis: "En un mundo postapocalíptico, Gus, un niño mitad humano y mitad ciervo, busca un nuevo comienzo junto a Jeppers, un vagabundo con una vida solitaria.",
    genero: "Drama",
}

serie_2 = {
    nombre: "Resident Evil",
    formato: "Serie",
    temporadas: "1",
    duracion: "8 Capítulos",
    sinopsis: "Años después de los escalofriantes eventos en Raccoon City, Claire y Leon se ven envueltos en una siniestra conspiración cuando un ataque viral arrasa la Casa Blanca",
    genero: "Drama",
}

serie_3 = {
    nombre: "Atypical",
    formato: "Serie",
    temporadas: "4",
    duracion: "8 Capítulos",
    sinopsis: "Un adolescente con autismo está listo para enamorarse. Para comenzar a salir y encontrar el amor, necesita ser más independiente.",
    genero: "Drama",
}

serie_4 = {
    nombre: "The Witcher",
    formato: "Serie",
    temporadas: "1",
    duracion: "8 Capítulos",
    sinopsis: "El brujo Geralt, un cazador de monstruos, trata de encontrar su lugar en un mundo en el que las personas suelen ser más malvadas que las bestias.",
    genero: "Acción",
}

serie_5 = {
    nombre: "Anne with an E",
    formato: "serie",
    temporadas: "3",
    duracion: "8 Capítulos",
    sinopsis: "Una huerfanita con una imaginación sin escalas termina por error en la casa de una solterona y su hermano. Basada en la inolvidable novela.",
    genero: "Drama",
}

#para poder manejar los datos, creamos una lista

series= [
    serie_1, serie_2, serie_3, serie_4, serie_5
]

for serie in series
    puts "Nombre: #{serie[:nombre]} \t Formato: #{serie[:formato]}"
    
end
puts "===="

# # puts "Nombre: #{serie_1[:nombre]} \t Formato: #{serie_1[:formato]}"
# # puts "Nombre: #{serie_2[:nombre]} \t Formato: #{serie_2[:formato]}"
# # puts "Nombre: #{serie_3[:nombre]} \t Formato: #{serie_3[:formato]}"
# # puts "Nombre: #{serie_4[:nombre]} \t Formato: #{serie_4[:formato]}"


