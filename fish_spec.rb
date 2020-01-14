require('minitest/autorun')
require('minitest/reporters')
require_relative('bear')
require_relative('fish')
require_relative('river')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new



class TestFish < MiniTest::Test

  def setup
    @bear = Bear.new("Simon", "Brown")
    @salmon = Fish.new("Salmon")
    @cod = Fish.new("Cod")
    @river = River.new('Eden')

  end

  def test_fish_name
    assert_equal("Salmon", @salmon.name)
  end

end
