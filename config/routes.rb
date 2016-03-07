Rails.application.routes.draw do
    post 'signup', to: 'organization#create'
end
