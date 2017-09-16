Rails.application.routes.draw do
  scope module: 'api', defaults: { format: 'json' } do
    namespace :v1 do
      get 'frameworks', to: 'frameworks#index'
      get 'frameworks/:id/tutorials', to: 'tutorials#index'
      get 'tutorials/:id/like', to: 'tutorials#like'
      get '/tutorials/trending', to: 'tutorials#trending'
      post 'subscribe', to: 'subscriptions#new'
    end
  end
end
