class ElasticBoardsController < ApplicationController
  def index
    @mushrooms = mushrooms_search
  end

  def create
    @mushrooms = mushrooms_search
  end

  private

  def mushrooms_search
    Mushroom.search("*", where: query_params, page: params[:page], per_page: 50, aggs: column_names.map(&:to_sym), load: false)
  end

  def filters_constructor
    result = {}
    mushrooms_search.aggregations.each do |aggregation|
      parsed_aggregations = parse_aggregation(aggregation)
      next if parsed_aggregations.empty?

      result[aggregation[0].to_sym] = parsed_aggregations
    end
    @filters = result
  end

  def parse_aggregation(agg)
    result = []
    buckets = (agg[1]["buckets"] || agg[1].dig(agg[0], "buckets"))
    buckets.each do |key|
      result << { t("agaricus_lepiota.#{agg[0]}.#{key['key']}") => key['key']}
    end
    result
  end

  def query_params
    @permitted_params ||= params.permit(column_names)
    @query_params ||= @permitted_params.delete_if { |_key, value| value.blank? }
  end
end
