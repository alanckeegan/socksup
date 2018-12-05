class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new
    @submission.user = current_user
    @submission.listing = Listing.find(params[:listing_id])
    @submission.save
    redirect_to take_quiz_path(Listing.find(params[:listing_id]).quiz, @submission)
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def submit
    @submission = Submission.find(params[:id])
    @submission.submitted = true
    @submission.save
    respond_to do |format|
      format.js
    end
  end

  private

end
