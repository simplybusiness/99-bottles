require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    "#{bottle_message(number).capitalize} of beer on the wall, #{bottle_message(number)} of beer.\n" +
      "#{take_message(number)}, #{bottle_message(next_count(number))} of beer on the wall.\n"
  end

  def next_count(bottle_count)
    bottle_count == 0 ? 99 : bottle_count - 1 
  end

  def take_message(bottle_count)
    case bottle_count
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def bottle_message(bottle_count)
    # bottle_count > 1 ? "#{bottle_count} bottles" : "#{bottle_count} bottle"
    case bottle_count
    when 0
      "no more bottles"
    when 1
      "#{bottle_count} bottle"
    else
      "#{bottle_count} bottles"
    end
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
