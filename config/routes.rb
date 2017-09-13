Rails.application.routes.draw do
  scope module: 'api', defaults: { format: 'json' } do
    namespace :v1 do
      get 'frameworks', to: 'frameworks#index'
      get 'frameworks/:id/tutorials', to: 'tutorials#index'
      get 'tutorials/:id/like', to: 'tutorials#like'
      post 'subscribe', to: 'subscriptions#new'
    end
  end
end
