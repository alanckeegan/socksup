class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
  end
end
