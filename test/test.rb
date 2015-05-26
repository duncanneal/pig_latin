require 'bundler/setup'
require 'minitest/autorun'


require 'pig_latin'

class PigLatinTest < MiniTest::Test

  def setup
  end

  def test_01_human
    human = PigLatin.new("human")
    expected = "umanhay"
    assert_equal expected, human.translate
  end