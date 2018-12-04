class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new
    @submission.user = current_user
    @submission.listing = Listing.find(params[:listing_id])
    @submission.save
    redirect_to submission_quiz_path(@submission, Listing.find(params[:listing_id]).quiz)
  end
end
