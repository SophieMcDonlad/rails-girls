Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :user_name_lstrings
  get 'pages/info'

	root to: redirect('/ideas')
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
