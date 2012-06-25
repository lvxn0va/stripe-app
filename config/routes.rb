StripeApp::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  match 'railsthemes/landing' => 'railsthemes#landing'
  match 'railsthemes/inner' => 'railsthemes#inner'
  match 'railsthemes/jquery_ui' => 'railsthemes#jquery_ui'
end
