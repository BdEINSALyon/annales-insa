AnnalesInsa::Application.routes.draw do
  devise_for :users

  resources :documents

  # Public homepage
  root to: "welcome#index"
end
