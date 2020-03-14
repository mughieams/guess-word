# frozen_string_literal: true

require_relative 'src/word'
require_relative 'src/question'
require_relative 'src/point'

words = Word.new('data/noun_words.txt').words
question_pack = Question.new(words)
point = Point.new(0)

until question_pack.questions.empty?
  print "Tebak kata : #{question_pack.get_question}\n"
  print 'Jawab : '
  answer = gets
  print "#{question_pack.submit_answer(point, answer.chomp)}\n"
end
