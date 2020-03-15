# frozen_string_literal: true

require_relative 'lib/guess-word'

words = GuessWord::Word.new('data/noun_words.txt').words
question_pack = GuessWord::Question.new(words)
point = GuessWord::Point.new(0)

until question_pack.questions.empty?
  print "Tebak kata : #{question_pack.get_question}\n"
  print 'Jawab : '
  answer = gets
  print "#{question_pack.submit_answer(point, answer.chomp)}\n"
end
