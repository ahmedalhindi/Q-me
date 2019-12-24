Rails.application.routes.draw do
  #devise_for :managers
  root to: "managers#index"
  resources :ques do
    resources :services
  end

  devise_for :managers, controllers: { registrations: 'managers/registrations',
    sessions: 'managers/sessions', unlocks: 'managers/unlocks',
    passwords: 'managers/passwords', confirmations: 'managers/confirmations'}

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
