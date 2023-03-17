require 'minitest/autorun'

class Bottles
  # number_of_bottle: [("no more", "go to store", "bottles"), (1, "it", "bottle"), (n, "one", "bottles")]
  attr_reader :bottle_or_bottles, :number_of_bottles
  
  def initialize(number)
    @number_of_bottles = number
  end

  def to_i
    @number_of_bottles
  end

  def to_s
    if @number_of_bottles == 0
      "no more"
    else
      @number_of_bottles.modulo(100).to_s
    end
  end

  def bottles_left
    Bottles.new(@number_of_bottles - 1)
  end

  def bottle_or_bottles
    if @number_of_bottles == 1
      "bottle"
    else
      "bottles"
    end
  end

  def it_or_one
    if @number_of_bottles == 1
      "it"
    else
      "one"
    end
  end
end

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number_of_bottles)
    bottles = Bottles.new(number_of_bottles)
    "#{n_bottles_of_beer_on_the_wall(bottles).capitalize}, #{n_bottles_of_beer(bottles)}.\n" +
    "#{take_one_down_or_go_to_the_store(bottles)}, #{n_bottles_of_beer_on_the_wall(bottles.bottles_left)}.\n"
  end

  def n_bottles_of_beer(number_of_bottles)
    "#{number_of_bottles} #{number_of_bottles.bottle_or_bottles} of beer"
  end

  def n_bottles_of_beer_on_the_wall(number_of_bottles)
    "#{number_of_bottles} #{number_of_bottles.bottle_or_bottles} of beer on the wall"
  end

  def take_one_down_or_go_to_the_store(number_of_bottles)
    case number_of_bottles.to_i
    when 0
      "Go to the store and buy some more"
    else
      "Take #{number_of_bottles.it_or_one} down and pass it around"
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
