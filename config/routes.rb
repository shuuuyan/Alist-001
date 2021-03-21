Rails.application.routes.draw do
 
  get 'alists/index'
  root to: "alists#index"
end
