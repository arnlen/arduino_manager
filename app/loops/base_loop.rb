class BaseLoop

  def initialize(sleep_period: 10)
    Thread.new do
      while true
        sleep(sleep_period)
        run
      end
    end
  end

end