class ElasticBoardsController < ApplicationController
  def index
    @mushrooms = Mushroom.search("*").results
  end
end
