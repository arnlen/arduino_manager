# Initiliaze application's loops

module Loop

  DEFAULT_SLEEP_PERIOD = 2
  RAW_SERIAL_DATA = Queue.new
  DATA_TO_PERSIST = Queue.new

  ReadDataFromSerialLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)
  ParseRawDataLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)

  PersistDataLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)

end