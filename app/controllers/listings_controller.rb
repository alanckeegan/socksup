class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    raise
  end
end
