class LineItem < ActiveRecord::Base
  belongs_to :project
  belongs_to :watchlist
end
