Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tokens, only: [:create] 
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, except: [:new, :edit]  
    end
  end
end
