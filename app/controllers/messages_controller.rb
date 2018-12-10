class MessagesController < ApplicationController
  def create
    @message = Message.new
    @message.user = User.find(current_user.id)
    @message.submission = Submission.find(params[:submission_id])
    @message.content = params[:message][:content]
    if @message.save
      redirect_to submission_messages_path(@message.submission)
    end
  end

  def index
    @submission = Submission.find(params[:submission_id])
    @messages = Message.where(submission_id: @submission.id)
  end


# private

end
