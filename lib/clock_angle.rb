class ClockTime
  define_method(:initialize) do |hours, minutes|
    @hours = hours
    @minutes = minutes
  end

  define_method(:clock_angle) do
    hour_angle = (@hours % 12)*30+(@minutes / 2)
    minutes_angle = @minutes * 6
    angle_difference = (hour_angle - minutes_angle).abs    
  end
end
