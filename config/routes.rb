Rails.application.routes.draw do
  devise_for :users
  get 'archives/index'

  get 'public/index'
  root to: 'public#index'

  resources :entries

  # For error pages
  if Rails.env.production?
    get '/400', to: 'errors#bad_request'
    get '/401', to: 'errors#unauthorized'
    get '/403', to: 'errors#forbidden'
    get '/404', to: 'errors#not_found'
    get '/408', to: 'errors#request_timeout'
    get '/422', to: 'errors#unacceptable'
    get '/429', to: 'errors#too_many_requests'
    get '/500', to: 'errors#internal_error'
    get '/502', to: 'errors#bad_gateway'
    get '/503', to: 'errors#service_unavailable'
    get '/504', to: 'errors#gateway_timeout'
  end
end
