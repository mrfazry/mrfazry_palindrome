require "test_helper"

class MrfazryPalindromeTest < Minitest::Test
  # def test_that_it_has_a_version_number
  #   refute_nil ::MrfazryPalindrome::VERSION
  # end
  #
  # def test_it_does_something_useful
  #   assert true
  # end

  # test for string

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_palindrome_alphanumeric
    assert "saya suka 101 akusayas".palindrome?
  end

  def test_non_palindrome_alphanumeric
    refute "saya 1021 saya".palindrome?
  end

  # test for integer

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_array_palindrome
    skip
  end

  def test_array_non_palindrome
    skip
  end

end
