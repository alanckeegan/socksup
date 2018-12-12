class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @submission = Submission.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new
  end

  private

  # def quiz_params
  #   params.require(:quiz).permit()
  # end
end
