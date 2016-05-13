#
# Persist read and parsed data to database
#
class PersistDataLoop

  def initialize(:sleep_period)
    Thread.new do
      while true
        sleep(sleep_period)
        persist_data
      end
    end
  end

  private

  def persist_data
    while !Loop::DATA_TO_PERSIST.empty?
      data_to_persist = Loop::RAW_SERIAL_DATA.pop

      Rails.logger.debug("Persist #{data_to_persist}")
    end
  end

end