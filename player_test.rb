require 'test/unit'
require_relative 'player'

class Player_Test < Test::Unit::TestCase
  def setup
    @player = Player.new('John')
  end

  def test_initialize
    assert_equal('John', @player.name, 'ERROR')
    assert(@player.player_answer_array.size == 0, 'ERROR')
  end

  #can't test player_answer as it is a user input
end