Rails.application.routes.draw do
  root "homes#index"
  resources :scrapings, only: [:index] do
    post :run, on: :collection
  end
end
