#
# Write data on a LCD screen through serial communication
#
class LcdController < ApplicationController

  def write
    LcdService.send_text_to_display(params["text_to_display"])
    head :ok
  end

end
