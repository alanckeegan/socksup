class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    if params[:query]
      @city = params[:query][:city]
    end
    @listings = @listings.where(city: @city.capitalize) unless @city == "" || @city == nil
  end
end
