Rails.application.routes.draw do
  devise_for :users

  root 'visitors#index'

  get '/reports', to: 'reports#subjects', as: 'report_subjects'

  resources :students, :teachers do
    get :subjects
  end

  resources :payments
end
