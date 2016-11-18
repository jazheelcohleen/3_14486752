class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @player_answer_array = []
  end

  def player_answer
    @player_answer_array << gets.to_i
  end

end