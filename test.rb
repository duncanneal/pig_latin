require 'bundler/setup'
require 'minitest/autorun'


require 'pig_latin'

class PigLatinTest < MiniTest::Test


  def test_01_human
    human = PigLatin.new("human")
    expected = "umanhay"
    assert_equal expected, human.translate
  end




   def self.test_order
    :alpha
  end
end