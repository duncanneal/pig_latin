require 'bundler/setup'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require 'pig_latin'

class TestPigLatin < MiniTest::Test

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
  
  def test_05_The_Resemblance_Mutters
    expected = "Ethay Esemblanceray Uttersmay"
    assert_equal expected, PigLatin.capital_translate("The Resemblance Mutters")
  end 

  def test_06_15_Dangerous_Facts_Electricians_Keep_To_Themselves
    expected = "15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay"
    assert_equal expected, PigLatin.capital_translate("15 Dangerous Facts Electricians Keep To Themselves")
  end

  def test_07_The_unpopular_glory_renames_an_ice!
    expected = "Ethay unpopularyay oryglay enamesray anyay iceyay!"
    assert_equal expected, PigLatin.capital_first_word_only_translate("The unpopular glory renames an ice!")
  end             
end