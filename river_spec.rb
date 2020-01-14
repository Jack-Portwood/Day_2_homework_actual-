require('minitest/autorun')
require('minitest/reporters')
require_relative('bear')
require_relative('fish')
require_relative('river')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new



class TestRiver < MiniTest::Test

  def setup
    @salmon = Fish.new("Salmon")
    @cod = Fish.new("Cod")
    @river = River.new('Eden')

  end

    def test_river_has_fish
      assert_equal(2, @river.get_fish_count)
    end

end
