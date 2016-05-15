#
# Persist read and parsed data to database
#
class PersistDataLoop

  def initialize(sleep_period:)
    Thread.new do
      puts "[init] #{self.class.to_s} started!"

      while true
        sleep(sleep_period)
        persist_data
      end
    end
  end

  private

  def persist_data
    unless Loop::DATA_TO_PERSIST.empty?
      data_to_persist = Loop::DATA_TO_PERSIST.pop
      Rails.logger.debug("[#{self.class.to_s}] Persist: #{data_to_persist}")
    end
  end

end