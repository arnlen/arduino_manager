class TemperatureSensorLoop < BaseLoop

  private

  def run
    Rails.logger.debug("Reading temperature value.")
    sleep(1) # Do something "useful" here
    Rails.logger.debug("Temperature is: VALUE")
  end

end