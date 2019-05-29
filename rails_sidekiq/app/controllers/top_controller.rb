class TopController < ApplicationController
  def index
    sql = ActiveRecord::Base.send(:sanitize_sql_array, [
      "LEFT OUTER JOIN stock_daily_prices AS c ON stocks.id=c.stock_id AND c.priced_on=:date",
      date: "--"
    ])
    puts sql
  end
end
