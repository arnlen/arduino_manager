#
# Read data from Arduino sent through serial,
# Then parse them and prepare them to be persisted.
#
# Raw data enforces the following format:
# "{'sensor': 'temperature', 'value': '18.83'}\r\n"
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
    raw_data = Arduino::SERIAL.read(1000)
    parse_raw_data(raw_data) unless raw_data.blank?
  end

  def parse_raw_data(raw_data)
    raw_data.delete!("\r\n").gsub!("'","\"")
    Rails.logger.info "New data received from serial: #{raw_data}"

    begin
      parsed_data = JSON.parse(raw_data)
      Loop::DATA_TO_PERSIST << parsed_data
      Rails.logger.info "Ready to persist: #{parsed_data}"
    rescue JSON::ParserError => e
      Rails.logger.error("#{e.class} #{e.message} : Invalid JSON format",
                        { invalid_data: raw_data })
    end
  end

end