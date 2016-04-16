#
# Send order to Arduino through serial port
#
class LightController < ApplicationController

  def on
    Arduino::SERIAL.serial_puts("0")
    render json: { light: "on" }
  end

  def off
    Arduino::SERIAL.serial_puts("1")
    render json: { light: "off" }
  end

end
