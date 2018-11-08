# Se pide:  
# - Crear un método de clase llamado *read_file* que reciba como argumento el <u>nombre del archivo</u> (por defecto debe ser 'notas.txt') y devuelva la colección de objetos. El método debe alojar las instrucciones que se encuentran después de la clase. Finalmente imprimir la colección de objetos generada.
#     >Hint: Debes reemplazar el argumento de *File.open* con el nombre del argumento del método *read_file*.

class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nosmbre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(file_name = 'notas.txt')
    alumnos = []
    data = []
    File.open(file_name, 'r') { |file| data = file.readlines.map(&:chomp) }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    # print alumnos
  end
end

print Alumno.read_file
