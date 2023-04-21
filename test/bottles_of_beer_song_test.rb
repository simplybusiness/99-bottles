require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    case number
    when 0
      "#{bottle_qty(number).capitalize} #{pluralize_bottle(number)} of beer on the wall, #{bottle_qty(number)} #{pluralize_bottle(number)} of beer.\n" +
        "Go to the store and buy some more, #{next_bottle_count(number)} #{pluralize_bottle(next_bottle_count(number))} of beer on the wall.\n"
    when 1
      "#{bottle_qty(number).capitalize} #{pluralize_bottle(number)} of beer on the wall, #{number} #{pluralize_bottle(number)} of beer.\n" +
        "Take it down and pass it around, no more #{pluralize_bottle(next_bottle_count(number))} of beer on the wall.\n"
    else
      "#{number} #{pluralize_bottle(number)} of beer on the wall, #{number} #{pluralize_bottle(number)} of beer.\n" +
        "Take one down and pass it around, #{next_bottle_count(number)} #{pluralize_bottle(next_bottle_count(number))} of beer on the wall.\n"
    end
  end

  def pluralize_bottle(number)
    number == 1 ? "bottle" : "bottles"
  end

  def next_bottle_count(number)
    number == 0 ? 99 : (number-1)
  end

  def bottle_qty(number)
    number == 0 ? "no more" : number.to_s
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
