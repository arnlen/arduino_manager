#
# Parse raw data and prepare them to be persisted
# This loop used raw data produced by the ReadDataFromSerial loop
#
# Data format enforces the following JSON:
# {"temperature": "13.8"},{"pressure": "1013"},
#
class ParseRawDataLoop

  def initialize(:sleep_period)
    Thread.new do
      while true
        sleep(sleep_period)
        parse_raw_data
      end
    end
  end

  private

  def parse_raw_data
    collect_raw_data_string
    data_array = create_data_array

    data_array.each do |data_json|
      begin
        Loop::DATA_TO_PERSIST << JSON.parse(data_json)
      rescue JSON::ParserError => e
        Rails.logger.error("#{e.class} #{e.message} : Invalid JSON format",
                          { data_array: data_array, invalid_data: data_json })
      end
    end
  end

  def collect_raw_data_string
    while !Loop::RAW_SERIAL_DATA.empty?
      raw_data_string += Loop::RAW_SERIAL_DATA.pop
    end
  end

  def create_data_array
    raw_data_string.split(',')
  end

  attr_accessor :raw_data_string

  def raw_data_string
    @raw_data_string ||= ""
  end

end