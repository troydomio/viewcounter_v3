Rails.application.routes.draw do
  resources :counts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :counts
  end
end
