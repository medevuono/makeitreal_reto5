require './question.rb'

class Reto5

  attr_reader :reto5

  def initialize 
    @reto5 = []
  end
  
  def read_file(file)
    
    File.foreach(file) do |line|
    question, answer = line.chomp.split(';')
    @reto5.push(Question.new(question, answer))
    end
  
  end
  
end
