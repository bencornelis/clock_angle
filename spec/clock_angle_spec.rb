require('rspec')
require('clock_angle')

describe('ClockTime') do
  describe('ClockTime#clock_angle') do
    it('is 0 at 12 oclock') do
      test_case = ClockTime.new(12,0)
      expect(test_case.clock_angle()).to(eq(0))
    end
  end
end
