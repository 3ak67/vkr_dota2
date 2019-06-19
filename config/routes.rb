Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests
  resources :heroes

  scope controller: :search do
    get :search
  end

  root 'requests#new'
end