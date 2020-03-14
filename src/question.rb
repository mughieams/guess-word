# frozen_string_literal: true

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
      return "SALAH! Silakan coba lagi"
    else
      @questions -= [@correct_answers]
      point.plus(point)
      return "BENAR! point anda : #{point.value}!"
    end
  end
end
