Rails.application.routes.draw do
  scope module: 'api', defaults: { format: 'json' } do
    namespace :v1 do
      get 'frameworks', to: 'frameworks#index'
      get 'frameworks/tutorials', to: 'frameworks#index'
    end
  end
end
