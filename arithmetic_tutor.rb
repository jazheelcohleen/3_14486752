require_relative 'player.rb'
require_relative 'question.rb'
require_relative 'questionlist.rb'

class Arithmetic_Tutor

  attr_reader :questions

  def initialize
    @questions = QuestionList.new
  end

  def list_questions(random_one, random_two)
    @questions.add_to_list(Question.new(random_one, random_two))
  end

  def question_results(player_answers)
    result = "\nYour results were as follows: \n"
    @questions.list_of_questions.size.times do |i|
      result += "#{@questions.list_of_questions[i].question_result(player_answers[i])}"
    end
    result
  end
end