class PressureSensorLoop < BaseSensorLoop

  private

  def run
    Rails.logger.debug("Reading pressure value...")
    value = rand
    QUEUE << { pressure: { time: Time.now.to_i, value: value } }
    sleep(value) # Do something "useful" here
    Rails.logger.debug("Pressure is: #{value}")
  end

end