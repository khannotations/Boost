Boost::Application.routes.draw do

  root :to => 'main#index'
  get 'about' => 'main#about'
  get 'book' => 'main#book'

end
