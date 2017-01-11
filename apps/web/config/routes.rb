# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

resources :students, except: [:destroy]
resources :homeworks, except: [:destroy]
root to: 'students#index'
