EventWorld::Engine.routes.draw do
  match "events/index" => "events#index"
  root to: "events#index"
end
