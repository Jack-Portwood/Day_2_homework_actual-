require('minitest/autorun')
require('minitest/reporters')
require_relative('bear')
require_relative('fish')
require_relative('river')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new



class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Simon", "Brown")
    @salmon = Fish.new("Salmon")
    @cod = Fish.new("Cod")
    @river = River.new('Eden', [@salmon, @cod])
  end





def test_bear_eats_fish
  @river.add_fish@Cod
  @bear.bear_stomach(@river)
  assert_equal(1,@bear.bear_count)
  assert_equal(0,@river.get_fish_count)
end

end
