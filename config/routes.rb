Rails.application.routes.draw do
  root 'welcome#index'

  get 'auth/:provider/callback' => 'welcome#oauth'
  get 'auth/failure', to: redirect('/')
end
