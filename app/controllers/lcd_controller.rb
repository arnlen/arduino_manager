#
# Write data on a LCD screen through serial communication
#
class LcdController < ApplicationController

  def write
    LcdService.sent_text_to_display(params["text_to_display"])
  end

end
