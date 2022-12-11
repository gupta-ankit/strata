Rails.application.routes.draw do
  resources :comments
  resources :chat_messages

  resources :strata_plans do
    resources :chat_rooms
    resources :issues
    resources :residents, only: [:index, :new, :create]
    resources :residential_units, only: [:index, :new, :create]
  end

  post 'issues/:issue_id/comments', to: 'comments#create', as: :issue_comment

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'home#index'
end
