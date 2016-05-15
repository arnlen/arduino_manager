#
# Read data from Arduino sent through serial
#
class ReadDataFromSerialLoop

  def initialize(:sleep_period)
    Rails.logger.info "Initialize #{self.to_s}"
    Thread.new do
      while true
        sleep(sleep_period)
        read_data
      end
    end
  end

  private

  def read_data
    while data_available?
      Loop::RAW_SERIAL_DATA << Arduino::SERIAL.serial_getchar
    end
    Rails.logger.info "New data received from serial"
  end

  def data_available?
    Arduino::SERIAL.serial_data_avail > 0
  end

end