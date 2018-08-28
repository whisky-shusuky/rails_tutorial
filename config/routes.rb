Rails.application.routes.draw do
  get 'foo/bar'
  get 'foo/buz'
  get 'static_pages/home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
