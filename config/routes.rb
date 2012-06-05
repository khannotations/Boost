Boost::Application.routes.draw do

  root :to => 'main#index'
  match "book" => "main#book"
  match "author" => "main#author"


end
