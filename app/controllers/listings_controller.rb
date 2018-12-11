class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # if params[:query][:city] == ("" || nil)
    #   @listings = Listing.all
    # else
    #   @listings = Listing.joins(:employer).where(employers: {city: params[:query][:city].capitalize})
    # end
    @listings = Listing.all
    if params[:query]
      @city = params[:query][:city]
      @title = params[:query][:title]
    else
      params[:query] = {}
    end

    @listings = @listings.joins(:employer).where(employers: {city: @city.capitalize}) unless @city == "" || @city == nil
    @listings = @listings.where("title ILIKE ?", "%#{@title}%") unless @title == "" || @title == nil

    @all_listings = Listing.all
    session[:search] = params[:query]
    if current_user.nil?
    @submissions = []
    else
    @submissions = current_user.submissions
    end
  end

  def show
    if current_user.nil?
    @submissions = []
    else
    @submissions = current_user.submissions
    end
    @currentusersubmissionslistingids = []
    @submissions.each do |submission|
      @currentusersubmissionslistingids << submission.listing_id
    end
    @listing = Listing.find(params[:id])
    @markers = [{ lng: @listing.employer.longitude, lat: @listing.employer.latitude }]
  end
end
