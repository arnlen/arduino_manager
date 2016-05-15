#
# Read data from Arduino sent through serial
#
class ReadDataFromSerialLoop

  def initialize(sleep_period:)
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
    while raw_data = Arduino::SERIAL.read(1000) && raw_data.present?
      Loop::RAW_SERIAL_DATA << raw_data
    end
    Rails.logger.info "New data received from serial: #{raw_data}"
  end

end