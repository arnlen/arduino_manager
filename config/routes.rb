Rails.application.routes.draw do

  # Routes to turn light on and off
  get 'light/:light_id/on', to: 'light#on'
  get 'light/:light_id/off', to: 'light#off'

  root 'static_pages#live'

  post 'lcd/write'

end
