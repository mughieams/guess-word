# frozen_string_literal: true

module GuessWord
  class Question
    attr_reader :questions
    attr_reader :correct_answers

    def initialize(question = [])
      @questions = question
    end

    def get_question
      @correct_answers = @questions.sample
      return nil if @correct_answers.nil?

      @correct_answers.split('').shuffle.join
    end

    def submit_answer(point, answer)
      if answer != @correct_answers
        print '  ' + Rainbow("SALAH! Silakan Coba Lagi\n").red.bright
      else
        @questions -= [@correct_answers]
        point.plus(point)
        print '  ' + Rainbow('BENAR! Point Anda : ').green.bright + Rainbow("#{point.value}\n").blue.bright
      end
    end
  end
end
