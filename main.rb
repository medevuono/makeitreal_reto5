require './reto5.rb'
require './question.rb'

puts "Bienvenido a reto 5!!"
puts "Para jugar solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts "------------------------"
gets

player = Reto5.new
player.read_file("questions.txt")

i = 1

player.reto5.each do |question|

  puts "Pregunta numero #{i}:"
  puts question.question

    flag = true
    while flag      
      
      if question.correct?(gets.chomp)
        puts "Respuesta correcta!!"
        i += 1
        flag = false
        gets
      else
        puts "Incorrecto! Trata nuevamente"
      end
      
    end
    
end

puts "FELICITACIONES!! Has ganado el juego!!"