require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  describe 'after commit callback' do
    it 'launch job for elasticsearch reindex' do
      expect(MushroomReindexerJob).to receive(:perform_later)
      create(:mushroom)
    end
  end
end

