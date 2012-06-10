Boost::Application.routes.draw do

  root :to => 'main#index'
  match "book" => "main#book"
  match "author" => "main#author"
  match "acclaim" => "main#acclaim"


end
