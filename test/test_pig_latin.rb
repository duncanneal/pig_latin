require 'bundler/setup'
require 'minitest/autorun'
require 'pig_latin'

class PigLatin < MiniTest::Test

  def test_01_human
    expected = "umanhay"
    assert_equal expected, PigLatin.translate("human")
  end

  def test_02_transformation
    expected = "ansformationtray"
    assert_equal expected, PigLatin.translate("transformation")
  end
  
  def test_03_occupying
    expected = "occupyingyay"
    assert_equal expected, PigLatin.translate("occupying")
  end
  
  def test_04_combat_complains
    expected = "ombatcay omplainscay"
    assert_equal expected, PigLatin.translate("combat complains")
  end








  def self.test_order
    :alpha
  end
end