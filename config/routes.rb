LetterOpenerDemo::Application.routes.draw do
  resources :invites, :only => [:create]
  root :to => 'welcome#index'
end
