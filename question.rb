class Question
  attr_accessor :num1, :num2, :answer, :question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
    @question = "what does #{num1} + #{num2} equal?"
  end
end