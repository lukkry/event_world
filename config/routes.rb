EventWorld::Engine.routes.draw do
  resources :events, only: [:index] do
    collection do
      get :init_data
    end
  end

  root to: "events#index"
end
