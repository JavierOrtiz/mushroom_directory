class ElasticBoardsController < ApplicationController
  def index
    @table_column_names = Mushroom.column_names
    @mushrooms = Mushroom.search("*", page: params[:page], per_page: 50)
  end
end
