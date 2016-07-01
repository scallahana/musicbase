Rails.application.routes.draw do
  resources :user_signups, only: [:new, :create]


  root 'user_signups#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
