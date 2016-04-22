Rails.application.routes.draw do

  get 'static_pages/camera'

  # Routes to turn light on and off
  get 'light/on'
  get 'light/off'

end
