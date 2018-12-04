class ListingsController < ApplicationController
  def index
    if params[:query][:city] == ("" || nil)
      @listings = Listing.all
    else
      @listings = Listing.joins(:employer).where(employers: {city: params[:query][:city]})
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
