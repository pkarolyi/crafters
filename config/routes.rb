Rails.application.routes.draw do
# Application root
  root to: 'static_pages#index'

# Session management
  post 'sessions/create'
  get 'sessions/destroy'

# Static pages:
  get 'index', to: 'static_pages#index', as: :static_pages_index
  get 'rules', to: 'static_pages#rules', as: :static_pages_rules
  get 'help', to: 'static_pages#help', as: :static_pages_help
  get 'donate', to: 'static_pages#donate', as: :static_pages_donate
  get 'dynmap', to: 'static_pages#dynmap', as: :static_pages_dynmap
  get 'dynmap_inside', to: 'static_pages#dynmap_inside', as: :static_pages_dynmap_inside
  get 'privacy_policy', to: 'static_pages#privacy_policy', as: :static_pages_privacy_policy
  get 'login', to: 'static_pages#login', as: :static_pages_login
  
# User management:
  get 'register', to: 'users#new', as: :new_user
  post 'users', to: 'users#create', as: :create_user
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  put 'users/:id', to: 'users#update', as: :update_user
  get 'users/:id', to: 'users#show', as: :show_user
  get 'confirm_email/:token', to: 'users#confirm_email', as: 'confirm_email'
  get 'confirm_email_resend/:id', to: 'users#confirm_email_resend', as: 'confirm_email_resend'
  get 'users', to: 'users#index', as: :index_users

# Donations
  get 'donations', to: 'donations#index', as: :donations
  get 'donations/new', to: 'donations#new', as: :new_donation
  post 'donations', to: 'donations#create', as: :create_donation
  get 'donations/:id', to: 'donations#show', as: :show_donation
  get 'donations/:id/edit', to: 'donations#edit', as: :edit_donation
  put 'donations/:id', to: 'donations#update', as: :update_donation
  delete 'donations/:id', to: 'donations#destroy', as: :destroy_donation

# Whitelist
  get 'whitelist', to: 'users#whitelist_show', as: :whitelist
  post 'whitelist', to: 'users#whitelist_apply', as: :whitelist_apply
end
