Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'timelineviewer', to: 'pages#timelineviewer'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'timelines' do
    resources 'bookmarks', only: %i[create destroy]
  end
  resources 'events', only: %i[index new create show edit update destroy]
end
