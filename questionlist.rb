require_relative 'question.rb'

class QuestionList

  attr_reader :list_of_questions, :result_array

  def initialize
    @list_of_questions = []
    @result_array = []
  end

  def add_to_list(question)
    @list_of_questions << question
  end

  def generate_results
    @list_of_questions.size.times do |i|
      @result_array << @list_of_questions[i].result
    end
  end

end