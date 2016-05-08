Rails.application.routes.draw do
  root 'static_pages#live'

  # Routes to turn light on and off
  get 'light/:light_id/on', to: 'light#on'
  get 'light/:light_id/off', to: 'light#off'

  post 'lcd/write'

end
