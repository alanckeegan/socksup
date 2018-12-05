class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @submission = Submission.find(params[:id])
  end
end
