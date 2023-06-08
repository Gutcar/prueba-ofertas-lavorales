Rails.application.routes.draw do
  get 'pages/home'
  resources :job_offers do
    get 'user_offers', on: :collection
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  post 'users/associate_job_offer/:job_offer_id', to: 'job_offers#associate_job_offer', as: 'associate_job_offer'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # Ruta raíz para usuarios no autenticados
  root to: 'pages#home', constraints: ->(req) { !req.env['warden'].user }

  # Ruta raíz para usuarios autenticados
  authenticated :user do
    root to: 'job_offers#index', as: :authenticated_root
  end
end
