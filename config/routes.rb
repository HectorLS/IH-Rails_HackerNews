Rails.application.routes.draw do
	
  get '/' => 'site#home', as: :home
  resources :users
  resources :posts do
  	resources :comments
  end

end
