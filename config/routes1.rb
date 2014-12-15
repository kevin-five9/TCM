EasyWeb::Application.routes.draw do
  get "pages/show"
  namespace :admin do
    resources :gallery_media
    resources :galleries
    resources :media
    resources :events
    resources :types do
      resources :articles
    end
    resources :articles
    resources :pages
    resources :templates
    resources :widgets
    resources :menus
    resources :view_adms
    resources :user_groups
    resources :groups do
      resources :users
    end
    resources :groups
  end
  devise_for :users
  namespace :admin do resources :users end
  get "/*url" => "application/pages#show", as: :page
  root :to=>"application/pages#show",url:"index"
end