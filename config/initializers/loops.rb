# Initiliaze application's loops

DEFAULT_SLEEP_PERIOD = 2
QUEUE = Queue.new

TemperatureSensorLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)
PressureSensorLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)

TransferDataLoop.new(sleep_period: 0.5)