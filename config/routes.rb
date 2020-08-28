Rails.application.routes.draw do
  #get 'months/index'
  #get 'summaries/index'
  root "summaries#index"
  resources :summaries, only: [:index]
  resources :months, only: [:index]
  resources :expends, only: [:new, :create]
  resources :incomes, only: [:new, :create]
end
