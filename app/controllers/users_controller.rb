class UsersController < ApplicationController
	def follow_user
		current_user.follows.create(following_id: params[:user_id])
		redirect_to question_path(params[:question_id])
	end

	def unfollow_user
		follow = current_user.follows.find_by(following_id: params[:user_id])
		if follow.present?
			follow.destroy 
		end
		redirect_to question_path(params[:question_id])
	end

	def follow_topic
		current_user.follow_topics.create(topic_id: params[:topic_id])
		redirect_to question_path(params[:question_id])
	end

	def unfollow_topic
		follow_topic = current_user.follow_topics.find_by(topic_id: params[:topic_id])
		if follow_topic.present?
			follow_topic.destroy
		end
		redirect_to question_path(params[:question_id])
	end
end
