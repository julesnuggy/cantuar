Rails.application.routes.draw do
  get 'welcome/index'

  resources :flashcards
  resources :practices

  # get 'practice/show'


  root 'welcome#index'
end
