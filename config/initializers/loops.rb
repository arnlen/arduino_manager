# Initiliaze application's loops

module Loop
  DEFAULT_SLEEP_PERIOD = 2

  DATA_TO_PERSIST = Queue.new
  puts "[init] Queue started: #{DATA_TO_PERSIST}"

  puts "[init] Kicking off loops!"

  ReadDataFromSerialLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)
  PersistDataLoop.new(sleep_period: DEFAULT_SLEEP_PERIOD)

end