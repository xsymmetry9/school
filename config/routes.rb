Rails.application.routes.draw do
  resources :student_progress_reports
  resources :articles
root 'pages#home'
get 'about', to:'pages#about'
end
