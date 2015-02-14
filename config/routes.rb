Rails.application.routes.draw do
	
  get '/' => 'site#home', as: :home
  resources :users
  resources :comments do
    resources :posts
  end

end
