Rails.application.routes.draw do
  get 'superuser/post'

    post 'signup', to: 'superusers#create'
end
