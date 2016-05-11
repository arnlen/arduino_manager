class TemperatureSensorLoop < BaseSensorLoop

  private

  def run
    Rails.logger.debug("Reading temperature value...")
    value = rand
    QUEUE << { temperature: { time: Time.now.to_i, value: value } }
    sleep(value) # Do something "useful" here
    Rails.logger.debug("Temperature is: #{value}")
  end

end