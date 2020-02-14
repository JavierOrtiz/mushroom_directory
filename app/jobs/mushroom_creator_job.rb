class MushroomCreatorJob < ApplicationJob
  queue_as :default

  def perform(mushroom_data)
    Mushroom.create!(family: "agaricus_lepiota", **mushroom_data)
  end
end
