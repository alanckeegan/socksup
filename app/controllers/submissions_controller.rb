class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new
    @submission.user = current_user
    @submission.listing = Listing.find(params[:listing_id])
    @submission.save
    redirect_to take_quiz_path(Listing.find(params[:listing_id]).quiz, @submission)
  end
end
