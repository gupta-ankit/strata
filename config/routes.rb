Rails.application.routes.draw do
  resources :chat_messages

  resources :strata_plans do
    resources :chat_rooms
    resources :issues
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'home#index'
end
