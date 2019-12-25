Rails.application.routes.draw do
  get 'ques/index'
  get 'ques/show'
  get 'ques/create'
  get 'ques/edit'
  get 'ques/update'
  get 'ques/destroy'
  #devise_for :managers
  root to: "ques#index"
  devise_for :managers, controllers: { registrations: 'managers/registrations',
    sessions: 'managers/sessions', unlocks: 'managers/unlocks',
    passwords: 'managers/passwords', confirmations: 'managers/confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
