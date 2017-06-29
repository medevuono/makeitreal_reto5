
class Question

  attr_reader :question, :answer

  def initialize (q, a)
    @question = q
    @answer = a
  end

  def correct?(a)
    @answer.downcase == a.downcase ? true : false
  end

end
