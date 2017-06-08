Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'houses#index'
get '/characters' => 'characters#all'
resources :houses do
	resources :characters
end
end
