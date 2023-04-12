require 'minitest/autorun'
require_relative '../lib/bottle_verse'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
        "#{action(number)}, #{quantity(successive(number))} #{container(successive(number))} of beer on the wall.\n"
    BottleVerse.new.verse(number)
  end

  def quantity(number)
    BottleVerse.new.quantity(number)
  end

  def successive(number)
    BottleVerse.new.successive(number)
  end

  def container(number)
    BottleVerse.new.container(number)
  end

  def action(number)
    BottleVerse.new.action(number)
  end

  def pronoun(number)
    BottleVerse.new.pronoun(number)
  end

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
    expected_verse =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(0))
  end
end
