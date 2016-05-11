# Initiliaze application's loops

DEFAULT_SLEEP_PERIOD = 2

TemperatureSensorLoop.new(sleep_period: 1)
PressureSensorLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)