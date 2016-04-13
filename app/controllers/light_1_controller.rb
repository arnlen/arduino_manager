#
# Send order to Arduino through serial port
#
class Light1Controller < ApplicationController
  before_action :open_serial_communication
  after_action :close_serial_communication

  def on
    @serial.serial_puts(1)
  end

  def off
    @serial.serial_puts(0)
  end

  private

  def open_serial_communication
    @serial = WiringPi::Serial.new(Arduino::DEVICE, Arduino::SERIAL_BAUD_RATE)
  end

  def close_serial_communication
    @serial.serial_close
  end

end
