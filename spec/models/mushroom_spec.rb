require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  describe 'after commit callback' do
    it 'launch job for elasticsearch reindex' do
      expect(MushroomReindexerJob).to receive(:perform_later)
      create(:mushroom)
    end
  end

  it "searches" do
    mushroom = Mushroom.create!(family: "agaricus_lepiota")
    mushroom.reindex

    Mushroom.search_index.refresh
    assert_equal ["agaricus_lepiota"], Mushroom.search("agaricus_lepiota").map(&:family)
  end
end

