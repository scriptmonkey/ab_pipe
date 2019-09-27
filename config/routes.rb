Rails.application.routes.draw do
  get 'pages/home' => 'high_voltage/pages#show', id: 'home'
  get resources :equipment, :controller => 'equipment', only: [:index, :new, :create]
  get resource :dashboard, only: :show
  get resource :session, :controller => 'sessions', only: [:new, :create, :destroy]
  get resources :users, :controller => 'users', only: [:new, :create, :destroy]
end
