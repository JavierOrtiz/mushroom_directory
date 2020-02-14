class Mushroom < ApplicationRecord
  searchkick

  after_commit :reindex_mushroom

  private

  def reindex_mushroom
    MushroomReindexerJob.perform_async(self)
  end
end
