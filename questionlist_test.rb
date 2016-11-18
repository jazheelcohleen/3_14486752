require 'test/unit'
require_relative 'questionlist'

class Question_List_Test < Test::Unit::TestCase

  def setup
    @questionlist = QuestionList.new
  end

  def test_initialize
    assert(@questionlist.list_of_questions.size == 0, 'ERROR')
    assert(@questionlist.result_array.size == 0, 'ERROR')
  end

  def test_add_to_list
    @questionlist.add_to_list(Question.new(7, 3))
    assert(@questionlist.list_of_questions.size != 0, 'ERROR')
    assert_equal(7, @questionlist.list_of_questions[0].num1, 'ERROR')
    assert_equal(3, @questionlist.list_of_questions[0].num2, 'ERROR')
  end


end