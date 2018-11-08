# Se tienen las clases *Rectangulo* y *Cuadrado* cuyos constructores reciben las medidas de los lados correspondientes.
# Se pide:
# - Agregar un <u>método de instancia</u> llámado *lados* en ambas clases. El método debe imprimir un *string* con las medidas de los lados.
# - Crear un módulo llamado *Formula*. 
# - Dentro del módulo *Formula* crear un método llamado *perimetro* que reciba dos argumentos (lados) y devuelva el perímetro.
# - Dentro del módulo *Formula* crear un método llamado *area* que reciba dos argumentos (lados) y devuelva el área.
# - Implementar -mediante *Mixin*- el módulo en las clases *Rectangulo* y *Cuadrado*.
# - Instanciar un *Rectangulo* y un *Cuadrado*.
# - Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.

module Formula
  def perimetro
    resultado = (lado1 * 2 + lado2 * 2)
    # print resultado
  end

  def area
    resultado = (lado1 * lado2)
    # print resultado
  end
end

class Rectangulo
  include Formula
  attr_accessor :lado1, :lado2
  def initialize(lado1, lado2)
    @lado1 = lado1
    @lado2 = lado2
  end

  def lados
    print "Los lados del #{self.class} son de #{lado1} y #{lado2}\n"
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado1, :lado2
  def initialize(lado1)
    @lado1 = lado1
    @lado2 = lado1
  end

  def lados
    print "Los lados de este #{self.class} son de #{lado1}\n"
  end
end

rec = Rectangulo.new(10,20)
rec.lados
puts rec.area

sq = Cuadrado.new(12)
sq.lados
puts sq.area
