class LightService

  def self.turn_on(light_id)
    Arduino::SERIAL.serial_puts("light##{light_id}:on")
  end

  def self.turn_off(light_id)
    Arduino::SERIAL.serial_puts("light##{light_id}:off")
  end
end