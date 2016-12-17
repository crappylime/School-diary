Rails.application.routes.draw do

  root 'visitors#index'

  get '/reports', to: 'reports#subjects', as: 'report_subjects'

  resources :students, :teachers do
    get :subjects
  end
end
