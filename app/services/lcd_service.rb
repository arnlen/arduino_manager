class LcdService

  def send_text_to_display(text)
    while text.present?
      text_portion = text.slice!(0..15)
      Arduino::SERIAL.serial_puts(text_portion)
    end
  end

end