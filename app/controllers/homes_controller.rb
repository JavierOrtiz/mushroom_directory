class HomesController < ApplicationController
  skip_before_action :filters_constructor, :column_names
  def index
  end
end
