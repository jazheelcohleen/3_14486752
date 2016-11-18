require 'test/unit'
require_relative 'question'

class Question_Test < Test::Unit::TestCase
  def setup
    @question = Question.new(7, 3)
    @result = 10
  end

  def test_initialize
    assert_equal(7, @question.num1, 'ERROR')
    assert_equal(3, @question.num2, 'ERROR')
    assert_equal(10, @result, 'ERROR')
  end

  def test_print_question
    assert_equal("What is 7 + 3? ", @question.print_question, 'ERROR')
  end

end