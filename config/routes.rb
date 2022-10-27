Rails.application.routes.draw do
  resources :strata_plans
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'home#index'
end
