class ListingsController < ApplicationController
  def index
    @listings = Listing.joins(:employer).where(employers: {city: params[:query][:city]})

  end

  def show
    @listing = Listing.find(params[:id])
  end
end
