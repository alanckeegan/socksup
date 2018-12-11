class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    quiz = Quiz.new
    @question = Question.create(question: params[:question], correct_answer: params[:correct_answer], wrong_answers: [params[:wrong_answers0], params[:wrong_answers1], params[:wrong_answers2]], quiz_id: quiz.id, question_type: params[:question_type])
    raise
  end

  private
  # def question_params
  #   params.require(:question).permit(:)
  # end
end
