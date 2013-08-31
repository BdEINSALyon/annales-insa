AnnalesInsa::Application.routes.draw do
  devise_for :users

  # If current_user is authenticated
  authenticated :user do
    root 'documents#index', as: 'authenticated_root'
  end

  # Public homepage
  root to: "welcome#index"
end
