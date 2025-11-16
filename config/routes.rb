Rails.application.routes.draw do
  resources :student_progress_reports, only: [:show, :index, :new, :create]
  resources :articles
root 'pages#home'
get 'about', to:'pages#about'

end
