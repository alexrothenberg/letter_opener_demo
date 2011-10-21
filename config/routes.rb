LetterOpenerDemo::Application.routes.draw do
  resources :invites, :only => [:new, :create]
  root :to => 'welcome#index'
end
