Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'timelines' do
    resources 'bookmarks', only: :create
  end
  resources 'events', only: %i[new create show  edit delete]
end
