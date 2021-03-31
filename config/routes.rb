Rails.application.routes.draw do
 
  devise_for :users
  get 'alists/index'
  root to: "alists#index"
  resources :alists 

end

