require('test/unit')
require('conversion2.rb')

class Test_Temperature_Conversion < Test::Unit::TestCase

  def test_conversion
  test = Conversion.new
  assert_equal(32,     test.fahrenheit(0))
  assert_equal(0,     test.fahrenheit(53))

  end

end
