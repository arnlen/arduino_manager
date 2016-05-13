# Initiliaze application's loops

module Loop

  DEFAULT_SLEEP_PERIOD = 2
  RAW_SERIAL_DATA = Queue.new
  DATA_TO_PERSIST = Queue.new

  TemperatureSensorLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)
  PressureSensorLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)

  TransferDataLoop.new(sleep_period: 0.5)

end