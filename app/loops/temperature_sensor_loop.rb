class TemperatureSensorLoop < Loops::Base
  config_option :period, :kind_of => Integer, :default => 30

  def run
    with_period_of(period) do # period is in seconds, read from config file
      debug("Hello, debug log!")
      sleep(1) # Do something "useful" here
      debug("Hello, debug log (yes, once again)!")
    end
  end
end