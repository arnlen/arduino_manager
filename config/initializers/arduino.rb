module Arduino

  DEVICE = '/dev/ttyACM0'
  SERIAL_BAUD_RATE = 9600

  SERIAL = Serial.new(DEVICE, SERIAL_BAUD_RATE)

end