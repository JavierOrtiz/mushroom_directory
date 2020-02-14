class MushroomReindexerJob < ApplicationJob
  queue_as :default

  def perform(mushroom)
    mushroom.reindex
  end
end
