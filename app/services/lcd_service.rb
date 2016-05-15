class LcdService

  def self.send_text_to_display(text)
    while text.present?
      text_portion = text.slice!(0..15)
      Arduino::SERIAL.write(text_portion)
    end
  end

end