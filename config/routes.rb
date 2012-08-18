EventWorld::Engine.routes.draw do
  resources :events, only: [:index] do
    collection do
      post :notify
    end
  end

  root to: "events#index"
end
