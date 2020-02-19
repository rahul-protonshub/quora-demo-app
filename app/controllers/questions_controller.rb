class QuestionsController < ApplicationController
	before_action :authenticate_user!

	def new
		@question = Question.new
		@topic = Topic.all
	end
	
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find_by(id: params[:id])
		@answers = @question.answers
	end

	def create
		@question = current_user.questions.new(question_params)
		if @question.save
			redirect_to questions_path
		else
			redirect_to new_question_path
		end
	end

	private
	  def question_params
	    params.require(:question).permit(:name, :user_id, :topic_id)
	  end
end
