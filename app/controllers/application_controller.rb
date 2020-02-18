class ApplicationController < ActionController::Base
  layout 'search'
  before_action :column_names, :filters_constructor

  def column_names
    @table_column_names = Mushroom.column_names.reject { |cn| cn.in? ["created_at", "updated_at", "id"] }
  end
end
