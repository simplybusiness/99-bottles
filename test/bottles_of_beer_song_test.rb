require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number_of_bottles)
    first_verse(number_of_bottles) + second_verse(number_of_bottles)
  end

  def first_verse(number_of_bottles)
    "#{n_bottles_of_beer(number_of_bottles)} on the wall, #{quantity(number_of_bottles).downcase} #{bottle_or_bottles(number_of_bottles)} of beer.\n"
  end

  def second_verse(number_of_bottles)
    case number_of_bottles
    when 0
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{it_or_one(number_of_bottles)} down and pass it around, #{quantity(number_of_bottles -1).downcase} #{bottle_or_bottles(number_of_bottles -1)} of beer on the wall.\n"
    end
  end

  def n_bottles_of_beer(number_of_bottles)
    "#{quantity(number_of_bottles)} #{bottle_or_bottles(number_of_bottles)} of beer"
  end

  def it_or_one(number_of_bottles)
    if number_of_bottles == 1
      "it"
    else
      "one"
    end
  end

  def bottle_or_bottles(number_of_bottles)
    if number_of_bottles == 1
      "bottle"
    else
      "bottles"
    end
  end

  def quantity(number_of_bottles)
    if number_of_bottles == 0
      "No more"
    else
      number_of_bottles.to_s
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
