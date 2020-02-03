Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "questions#index"
  resources :questions, only: [:index, :show]

  get 'follow_user', to: 'users#follow_user'
  get	'unfollow_user', to: 'users#unfollow_user'
	get 'follow_topic', to: 'users#follow_topic'
	get 'unfollow_topic', to: 'users#unfollow_topic'
end
