#
# Toggle a light on/off through serial port
#
class LightController < ApplicationController

  def on
    LightService.turn_on(params[:light_id])
  end

  def off
    LightService.turn_off(params[:light_id])
  end

end
