Boost::Application.routes.draw do

  root :to => 'main#index'
  match 'about' => 'main#about'

end
