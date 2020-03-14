# frozen_string_literal: true

require 'rspec'

describe 'Word' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'check the presence of files' do
    it 'if file exists' do
      expect(true).to be(File.exist?('data/noun_words.txt'))
    end
  end
end
