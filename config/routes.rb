Rails.application.routes.draw do
  get 'archives/index'

  resources :entries
  root to: 'entries#index'

  if Rails.env.production?
    get '/404', to: 'errors#not_found'
    get '/422', to: 'errors#unacceptable'
    get '/500', to: 'errors#internal_error'
    get '/502', to: 'errors#bad_gateway'
    get '/503', to: 'errors#service_unavailable'
  end
end
