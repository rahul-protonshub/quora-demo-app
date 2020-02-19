class AnswersController < ApplicationController

  def create
  	@question = Question.find_by(id: answer_params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  private
  
  def answer_params
    params[:answer][:user_id] = current_user.id
    params.require(:answer).permit(:user_id, :description, :question_id, :answer_id)
  end
end
