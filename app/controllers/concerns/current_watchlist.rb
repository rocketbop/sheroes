module CurrentWatchlist
  extend ActiveSupport::Concern
  
  private
  
  def set_watchlist
    @watchlist = Watchlist.find(session[:watchlist_id])
  rescue ActiveRecord::RecordNotFound
    @watchlist = Watchlist.create # If no watchlist can be found create a new one
    session[:watchlist_id] = @watchlist.id  
  end
end

