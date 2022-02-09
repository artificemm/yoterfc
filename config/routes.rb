Rails.application.routes.draw do
  resources :rfc_generator, only: [:create, :show], defaults: { format: :json }
  get 'pages/index'
  root "pages#index"
end
