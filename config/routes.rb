EventWorld::Engine.routes.draw do
  match "notify" => "events#notify", method: :post
  resources :events, only: [:index] do
    collection do
      post :notify
    end
  end

  root to: "events#index"
end
