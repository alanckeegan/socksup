class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    quiz = Listing.find(params[:listing_id]).quiz_id
    @question = Question.create(question: params[:question], correct_answer: params[:correct_answer], wrong_answers: [params[:wrong_answers0], params[:wrong_answers1], params[:wrong_answers2]], quiz_id: quiz, question_type: params[:question_type])
    @question.save!
    redirect_to user_path(current_user)
  end

  private
  # def question_params
  #   params.require(:question).permit(:)
  # end
end
