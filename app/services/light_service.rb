class LightService

  def self.turn_on(light_id)
    Arduino::SERIAL.write("light##{light_id}:on")
  end

  def self.turn_off(light_id)
    Arduino::SERIAL.write("light##{light_id}:off")
  end
end