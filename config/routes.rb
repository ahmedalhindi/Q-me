Rails.application.routes.draw do
  devise_for :managers
  root to: "ques#index"
  
  resources :ques do
    resources :services
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
