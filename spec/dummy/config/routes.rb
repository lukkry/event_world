Rails.application.routes.draw do
  mount EventWorld::Engine => "/events"
  root to: "home#index"
end
