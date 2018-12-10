class SubmissionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "submission_#{params[:submission_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
