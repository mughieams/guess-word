require 'rspec'
require_relative '../src/question'
require_relative '../src/word'

describe 'Question' do
  before do
    @list_question = Question.new(Word.new('data/noun_words.txt').words)
  end

  after do
    # Do nothing
  end

  context 'check the question list' do
    it 'if question list is empty' do
      @list_question = Question.new
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