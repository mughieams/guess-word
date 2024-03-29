# frozen_string_literal: true

describe 'Question' do
  before do
    @answer = GuessWord::Word.new('data/noun.txt').words
    @list_question = GuessWord::Question.new(@answer)
  end

  after do
    # Do nothing
  end

  context 'check the question list' do
    it 'if question list is empty' do
      @list_question = GuessWord::Question.new
      expect(@list_question.questions).to be_empty
    end

    it 'if question list is not empty' do
      expect(@list_question.questions).to_not be_empty
    end

    it 'if success to get question randomly' do
      expect(@list_question.get_question).to_not be_empty
    end
  end
end
