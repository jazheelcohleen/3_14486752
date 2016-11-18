require_relative 'arithmetic_tutor'

my_tutor = Arithmetic_Tutor.new
data = IO.readlines('tutor.dat')

player_one = Player.new(data[0].chomp)
srand(data[2].to_i)
data[1].to_i.times do |i|
  my_tutor.list_questions(rand(0..9), rand(0..9))
end
puts "Welcome to the Arithmetic Tutor, #{player_one.name}!"

data[1].to_i.times do |i|
  print my_tutor.questions.list_of_questions[i].print_question
  player_one.player_answer
end

puts my_tutor.question_results(player_one.player_answer_array)