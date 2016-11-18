class Player

  attr_reader :name, :player_answer_array

  def initialize(name)
    @name = name
    @player_answer_array = []
  end

  def player_answer
    @player_answer_array << gets.to_i
  end

end