#Crear un método que reciba dos strings,
#este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.

def create_index(*strings)
  File.open("index.html", "w") do |file|
      file.puts("<html>\n")
      file.puts("<head>\n\t<title>Mi título</title>\n</head>\n")
      file.puts("<body>\n")

      strings.each { |string| file.puts("\t<p>#{string}</p>\n") }

      file.puts("</body>\n</html>\n")
    end
end


s1 = "Párrafo uno"
s2 = "Párrafo dos"

create_index(s1, s2)


#Crear un método similar al anterior, que además pueda recibir un arreglo.
#Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.

def create_lista(*strings, array)
  File.open("listas.html", "w") do |file|
    file.puts("<html>\n")
    file.puts("<head>\n<title>Mi título</title>\n</head>\n")
    file.puts("<body>\n")

    strings.each { |string| file.puts("<p>#{string}</p>\n") }
    file.puts("<ol>\n")
    array.each { |ele| file.puts("\t<li>#{ele}</li>\n")}
    file.puts("</ol>\n")
    file.puts("</body>\n</html>\n")
  end
end

s1 = "Párrafo uno"
s2 = "Párrafo dos"
a1 = ["elemento1", "elemento2", "elemnto3", "elemento4"]



create_lista(s1, s2, a1)


# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.


def create_lista_color(*strings, array, colorp)
  File.open("listas_color.html", "w") do |file|
    file.puts("<html>\n")
    file.puts("<head>\n<title>Mi título</title>\n</head>\n")
    file.puts("<body>\n")

    strings.each { |string| file.puts("<p style='color:#{colorp}'>#{string}</p>\n") }
    file.puts("<ol>\n")
    array.each { |ele| file.puts("\t<li>#{ele}</li>\n")}
    file.puts("</ol>\n")
    file.puts("</body>\n</html>\n")
  end
end

s1 = "Párrafo uno"
s2 = "Párrafo dos"
a1 = ["elemento1", "elemento2", "elemnto3", "elemento4"]
cp = "blue"


create_lista_color(s1, s2, a1, cp)


#El retorno de los métodos debe devolver nil.
