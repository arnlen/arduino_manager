class PressureSensorLoop < BaseLoop

  private

  def run
    Rails.logger.debug("Reading pressure value.")
    sleep(1) # Do something "useful" here
    Rails.logger.debug("Pressure is: VALUE")
  end

end