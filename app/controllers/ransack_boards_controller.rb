class RansackBoardsController < ApplicationController
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
end
