class Mushroom < ApplicationRecord
  searchkick

  after_commit :reindex_mushroom

  private

  def reindex_mushroom
    MushroomReindexerJob.perform_later(self)
  end
end
