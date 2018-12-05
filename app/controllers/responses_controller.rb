class ResponsesController < ApplicationController

  def create
    @response = Response.new
    @response.question = Question.find(params[:response][:question_id])
    @response.submission = Submission.find(params[:submission_id])
    @response.content = params[:response][:content]
    @response.save

    @next_question = @response.question.quiz.questions[@response.question.quiz.questions.index(@response.question)+1]
  end

end
