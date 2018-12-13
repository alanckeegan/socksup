class QuestionsController < ApplicationController

  def show
    @quiz = Listing.find(params[:listing_id]).quiz
    @questions = Question.where(quiz_id: @quiz.id)
    @listing = Listing.find(params[:listing_id])
  end


  def new
    @question = Question.new
    @listing = Listing.find(params[:listing_id])
    @quiz = Listing.find(params[:listing_id]).quiz
    @employer = Employer.find(params[:employer_id])
  end

  def create
    quiz = Listing.find(params[:listing_id]).quiz_id
    @employer = Employer.find(params[:employer_id])
    @listing = Listing.find(params[:listing_id])
    @question = Question.create(question: params[:question], correct_answer: params[:correct_answer], wrong_answers: [params[:wrong_answers0], params[:wrong_answers1], params[:wrong_answers2]], quiz_id: quiz, question_type: params[:question_type])
    @question.save!
    if params[:finish_quiz]
      redirect_to employer_listing_question_path(@employer, @listing, quiz)
    else
      redirect_to new_employer_listing_question_path(@employer, @listing)
    end
  end

  private
  # def question_params
  #   params.require(:question).permit(:)
  # end
end
