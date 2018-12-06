class ResponsesController < ApplicationController

  def create
    @response = Response.new
    @response.question = Question.find(params[:response][:question_id])
    @response.submission = Submission.find(params[:submission_id])
    @response.content = params[:response][:content]
    @response.save

    @last_question = @response.question.quiz.questions.last
    @next_question = @response.question.quiz.questions[@response.question.quiz.questions.index(@response.question)+1]

    if @response.question == @last_question
      @quiz_done = true
    end

  end

end
