Rails.application.routes.draw do
  resources :chat_messages
  resources :residents, only: [:index, :new, :create]

  resources :strata_plans do
    resources :chat_rooms
    resources :issues
    get 'residents', to: 'residents#index'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'home#index'
end
