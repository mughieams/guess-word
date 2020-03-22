# frozen_string_literal: true

require_relative 'lib/guess-word'

words = GuessWord::Word.new('data/noun.txt').words
question_pack = GuessWord::Question.new(words)
point = GuessWord::Point.new(0)

until question_pack.questions.empty?
  print '  ' + Rainbow('Tebak Kata  : ').blue.bright + Rainbow("#{question_pack.get_question}\n").green.bright
  # puts "Tebak kata : #{question_pack.get_question}\n"
  print '  ' + Rainbow('Jawab       : ').blue.bright
  # print 'Jawab : '
  answer = gets
  print "#{question_pack.submit_answer(point, answer.chomp)}\n"
end
