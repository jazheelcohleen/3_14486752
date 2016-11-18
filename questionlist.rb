require_relative 'question.rb'

class QuestionList

  def initialize
    @list_of_questions = []
    @result_array = []
  end

  def add_to_list(question)
    @list_of_questions << question
  end

  def print_list
    @list_of_questions.size.times do |i|
      @list_of_questions[i].print_question
    end
  end

end