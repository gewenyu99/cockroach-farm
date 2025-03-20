require 'test_helper'
require 'string_utils'

class StringUtilsTest < Minitest::Test
  def test_reverse_words
    assert_equal "olleH dlroW", StringUtils.reverse_words("Hello World")
    assert_equal "gnirtS ytpmE", StringUtils.reverse_words("String Empty")
    assert_equal "", StringUtils.reverse_words("")
    assert_equal "a", StringUtils.reverse_words("a")
  end
  
  def test_count_vowels
    assert_equal 2, StringUtils.count_vowels("Hello")
    assert_equal 0, StringUtils.count_vowels("rhythm")
    assert_equal 5, StringUtils.count_vowels("AEIOU")
    assert_equal 0, StringUtils.count_vowels("")
  end
  
  def test_to_alternating_case
    assert_equal "hElLo", StringUtils.to_alternating_case("hello")
    assert_equal "wOrLd", StringUtils.to_alternating_case("WORLD")
    assert_equal "tEsT 123", StringUtils.to_alternating_case("TeSt 123")
    assert_equal "", StringUtils.to_alternating_case("")
  end
end

