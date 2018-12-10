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
  end

  def confirm
    @submission = Submission.find(params[:id])
    @submission.confirmed = true
    @submission.save
    redirect_to user_path(current_user)
  end

  def reject
    @submission = Submission.find(params[:id])
    @submission.confirmed = false
    @submission.save
    redirect_to user_path(current_user)
  end

end
