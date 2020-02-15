class RansackBoardsController < ApplicationController
  layout 'search'
  before_action :column_names, :filters_constructor
  def index
    @q = Mushroom.ransack(params[:q])
    @mushrooms = @q.result(distinct: true).paginate(page: params[:page], per_page: 50)
  end

  def create
    @q = Mushroom.ransack(params[:q])
    @mushrooms = @q.result(distinct: true).paginate(page: params[:page], per_page: 50)
  end

  private

  def filters_constructor
    @filters = I18n.t("agaricus_lepiota").map{|key, value| { key => value.map(&:flatten) }}
  end

  def column_names
    @table_column_names = Mushroom.column_names.reject { |cn| cn.in? ["created_at", "updated_at", "id"] }
  end
end
