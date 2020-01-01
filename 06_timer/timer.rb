class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def padded(num)
    if num == 0
     "00" 
    elsif
    num < 10
    "0" + num.to_s
    else
    num < 100
    num.to_s
    end
  end
  
  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = @seconds / 60 / 60
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  
  

end