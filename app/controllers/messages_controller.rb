class MessagesController < ApplicationController
  def create
    @message = Message.new
    @message.user = current_user
    @message.submission = Submission.find(params[:submission_id])
    @message.content = params[:message][:content]
    if @message.save
      ActionCable.server.broadcast("submission_#{@message.submission.id}", {
        message_partial: render(partial: 'messages/message', locals: {m: @message})
      })
      # respond_to do |format|
      #   format.html { redirect_to submission_messages_path(@message.submission) }
      #   format.js
      # end
    end
  end

  def index
    @submission = Submission.find(params[:submission_id])
    @messages = Message.where(submission_id: @submission.id)
  end


# private

end
