AnnalesInsa::Application.routes.draw do
  devise_for :users

  resource :documents

  # If current_user is authenticated
  authenticated :user do
    root 'documents#index', as: 'authenticated_root'
  end

  # Public homepage
  root to: "welcome#index"
end
