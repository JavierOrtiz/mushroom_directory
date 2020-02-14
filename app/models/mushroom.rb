class Mushroom < ApplicationRecord
  searchkick

  after_commit :reindex

  private

  def reindex
    self.reindex
  end
end
