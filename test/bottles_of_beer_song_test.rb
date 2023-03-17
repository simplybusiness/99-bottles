require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def test_verse_1
    expected_verse =
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    expected_verse =
      "98 bottles of beer on the wall, 98 bottles of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(98))
  end

  def test_verse_98
    expected_verse =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    assert_equal(expected_verse, verse(2))
  end

  def test_verse_99
    expected_verse =
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(1))
  end

  def test_last_verse
    skip('Test list')
    expected_verse =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(0))
  end

  def verse(number_of_bottles)
    number_of_bottles_remaining = number_of_bottles - 1
    article = number_of_bottles_remaining == 0 ? 'it' : 'one'

    "#{quantity(number_of_bottles)} #{pluralise_bottle(number_of_bottles)} of beer on the wall, #{quantity(number_of_bottles)} #{pluralise_bottle(number_of_bottles)} of beer.\n" +
      "Take #{article} down and pass it around, #{quantity(number_of_bottles_remaining)} #{pluralise_bottle(number_of_bottles_remaining)} of beer on the wall.\n"
  end

  def pluralise_bottle(number_of_bottles)
    number_of_bottles == 1 ? 'bottle' : 'bottles'
  end

  def quantity(number_of_bottles)
    number_of_bottles == 0 ? 'no more' : number_of_bottles.to_s
  end
end
