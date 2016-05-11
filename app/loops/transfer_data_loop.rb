# Transfert sensors' data to ground station

class TransferDataLoop

  def initialize(sleep_period: 10)
    Thread.new do
      while true
        sleep(sleep_period)
        run unless QUEUE.empty?
      end
    end
  end

  private

  def run
    Rails.logger.debug("/!\\ #{QUEUE.size} element(s) in queue. Starting transfer. /!\\")
    data_to_transfer = QUEUE.pop
    Rails.logger.debug(">>> DATA TRANSFERED: #{data_to_transfer}")
  end

end