require('rspec')
require('clock_angle')

describe('ClockTime') do
  describe('ClockTime#clock_angle') do
    it('calculates the angle distance between minute and hour hands, e.g. is 0 at 12 oclock') do
      test_case = ClockTime.new(12,0)
      expect(test_case.clock_angle()).to(eq(0))
    end

    it('is 180 at 6 oclock') do
      test_case = ClockTime.new(6,0)
      expect(test_case.clock_angle()).to(eq(180))
    end

    it('is 15 at 6:30') do
      test_case = ClockTime.new(6,30)
      expect(test_case.clock_angle()).to(eq(15))
    end

    it('picks smaller of the two angles when it is 85 at 9:10') do
      test_case = ClockTime.new(9,10)
      expect(test_case.clock_angle()).to(eq(145))
    end
  end

end
