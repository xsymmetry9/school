Rails.application.routes.draw do
  resources :student_progress_reports, only: [:show, :index, :new, :create]
  resources :articles
root 'pages#home'
get 'about', to:'pages#about'

get 'signup', to: 'users#new'
resources :users, except: [:new]
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
end
