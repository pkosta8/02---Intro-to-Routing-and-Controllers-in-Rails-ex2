Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome'       => 'pages#welcome'
  root 'pages#welcome'
  get '/'             => 'pages#welcome'
  get 'about'         => 'pages#about'
  get 'contest'       => 'pages#contest'
  get '/kitten/:size'       => 'pages#kitten'
get '/kittens/:size'       => 'pages#kittens'
 get '/set_kitten_url/:size'       => 'pages#set_kitten_url'
 get '/secrets/:magic_word' => 'pages#secrets'

  # root 'pages#welcome'
# get '/' => 'pages#welcome', as: 'welcome'
# get '/about' => 'pages#about', as: 'about'
# get '/contest' => 'pages#contest', as: 'contest'
# get '/kitten/:size' => 'pages#kitten', as: 'kitten'
# get '/kittens/:size' => 'pages#kittens', as: 'kittens'
# get '/set_kitten_url/:size' => 'pages#set_kitten_url', as: 'set_kitten_url'
# get '/secrets/:magic_word' => 'pages#secrets/:magic_word', as: 'magic'

end
