# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes.

module Formula
  def perimetro(base, altura)
    (base*2)+(altura*2)
  end

  def area(base, altura)
    base*altura
  end
end

class Rectangulo
  attr_accessor :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura

  end
end

def lados
  puts "Las medidas son base: #{@base} y la altura es: #{@altura}"
end

rectangulo1 = Rectangulo.new(2,4)
puts rectangulo1.perimetro(rectangulo1.base, rectangulo1.altura)
puts rectangulo1.area(rectangulo1.base, rectangulo1.altura)

class Cuadrado
  attr_accessor :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end
end

def lados
  puts "Las medidas del lado es #{@lado}"
end

cuadrado1 = Cuadrado.new(2)
puts cuadrado1.perimetro(cuadrado1.lado, cuadrado1.lado)
puts cuadrado1.area(cuadrado1.lado, cuadrado1.lado)

# Se pide:
# Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.
