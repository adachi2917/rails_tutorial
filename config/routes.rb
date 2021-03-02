Rails.application.routes.draw do

  post 'users/create', to: 'users#create'



  get 'signup', to: 'users#new'



  get 'users/index', to: 'users#index'



  get 'users/:id', to: 'users#show'



  get 'posts/index', to: 'posts#index'



  get 'posts/new', to: 'posts#new'



  get 'posts/:id', to: 'posts#show'



  post 'posts/create', to: 'posts#create'



  get 'posts/:id/edit', to: 'posts#edit'



  patch 'posts/:id/update', to: 'posts#update'



  delete 'posts/:id/destroy', to: 'posts#destroy'



  get 'posts/:id/comments/:comment_id/destroy', to: 'comments#destroy'



  post 'posts/:id/comments', to: 'comments#create'



  get '/', to: 'home#top'



  get 'about', to: 'home#about'

end
