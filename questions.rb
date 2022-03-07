class Question
  attr_accessor :num1, :num2, :correct_answer

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = self.num1 + self.num2
  end

  def math_question
    "What does #{self.num1} plus #{self.num2} equal?"
  end

end
