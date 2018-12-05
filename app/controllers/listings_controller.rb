class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query][:city] == ("" || nil)
      @listings = Listing.all
    else
      @listings = Listing.joins(:employer).where(employers: {city: params[:query][:city].capitalize})
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
