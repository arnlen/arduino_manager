module Arduino

  DEVICE = '/dev/ttyACM0'
  SERIAL_BAUD_RATE = 9600

  SERIAL = WiringPi::Serial.new(Arduino::DEVICE, Arduino::SERIAL_BAUD_RATE)

end