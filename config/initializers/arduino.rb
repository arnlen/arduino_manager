module Arduino

  DEVICE = ENV["ARDUINO_BOARD_PATH"] || '/dev/ttyACM0'
  SERIAL_BAUD_RATE = 9600

  SERIAL = Serial.new(DEVICE, SERIAL_BAUD_RATE)

  puts "[init] Serial communication initialized: #{SERIAL}"
end