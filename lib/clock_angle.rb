class ClockTime
  define_method(:initialize) do |hours, minutes|
    @hours = hours
    @minutes = minutes
  end

  define_method(:clock_angle) do 
    0
  end
end
