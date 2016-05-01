Rails.application.routes.draw do

  get 'screen/write'

  get 'static_pages/camera'

  # Routes to turn light on and off
  get 'light/:light_id/on', to: 'light#on'
  get 'light/:light_id/off', to: 'light#off'

end
