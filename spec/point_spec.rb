# frozen_string_literal: true

require 'rspec'
require_relative '../src/Point'

describe 'Point' do
  before do
    @point = Point.new(0)
  end

  after do
    # Do nothing
  end

  context 'check the point' do
    it 'if initial point' do
      expect(@point.value).to be(0)
    end

    it 'if player get the correct answer' do
      @point.plus(@point)
      expect(@point.value).to be(1)
    end
  end
end
