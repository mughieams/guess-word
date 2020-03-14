# frozen_string_literal: true

require 'rspec'
require_relative '../src/word'

describe 'Word' do
  before do
    @answers = Word.new('data/noun_words.txt')
  end

  after do
    # Do nothing
  end

  context 'check the presence of files' do
    it 'if file exists' do
      expect(true).to be(File.exist?('data/noun_words.txt'))
    end
  end

  context 'check values in the words' do
    it 'the word already exists' do
      expect(@answers.words).to include('buku')
    end

    it 'the word does not exists' do
      expect(@answers.words).to_not include('book')
    end
  end
end
