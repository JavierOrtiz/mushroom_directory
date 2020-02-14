class ElasticBoardsController < ApplicationController
  def index
    @table_column_names = column_names
    @mushrooms = mushrooms_search
    @filters = filters_constructor
  end

  private

  def mushrooms_search
    Mushroom.search("*", page: params[:page], per_page: 50, aggs: column_names.map(&:to_sym))
  end

  def filters_constructor
    result = {}
    mushrooms_search.aggregations.each do |aggregation|
      result[aggregation[0].to_sym] = parse_aggregation(aggregation)
    end
    result
  end

  def parse_aggregation(agg)
    result = []
    agg[1]["buckets"].each do |key|
      result << { t("agaricus_lepiota.#{agg[0]}.#{key['key']}") => key['key']}
    end
    result
  end

  def column_names
    @column_names ||= Mushroom.column_names.reject { |cn| cn.in? ["created_at", "updated_at"] }
  end
end
