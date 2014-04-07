class StoreController < ApplicationController
  
  def index
    @projects = Project.order(:title)
  end
 
end
