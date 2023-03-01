require 'minitest/autorun'

class BottlesOfMilkSongTest < Minitest::Test
  def test_verse_1
    skip('Test list')
    expected_verse =
      "99 bottles of milk on the wall, 99 bottles of milk.\n" +
        "Take one down and pass it around, 98 bottles of milk on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    skip('Test list')
    expected_verse =
      "98 bottles of milk on the wall, 98 bottles of milk.\n" +
        "Take one down and pass it around, 97 bottles of milk on the wall.\n"

    assert_equal(expected_verse, verse(98))
  end

  def test_verse_98
    skip('Test list')
    expected_verse =
      "2 bottles of milk on the wall, 2 bottles of milk.\n" +
        "Take one down and pass it around, 1 bottle of milk on the wall.\n"

    assert_equal(expected_verse, verse(2))
  end

  def test_verse_99
    skip('Test list')
    expected_verse =
      "1 bottle of milk on the wall, 1 bottle of milk.\n" +
        "Take it down and pass it around, no more bottles of milk on the wall.\n"

    assert_equal(expected_verse, verse(1))
  end

  def test_last_verse
    skip('Test list')
    expected_verse =
      "No more bottles of milk on the wall, no more bottles of milk.\n" +
        "Go to the store and buy some more, 99 bottles of milk on the wall.\n"

    assert_equal(expected_verse, verse(0))
  end
end
