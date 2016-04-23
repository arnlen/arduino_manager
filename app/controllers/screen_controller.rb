#
# Write data on a LCD screen through serial communication
#
class ScreenController < ApplicationController

  def write
    data_to_write = params("data")
    while data_to_write.present?
      data = data_to_write.slice!(0..15)
      Arduino::SERIAL.serial_puts(data)
    end
  end

end
