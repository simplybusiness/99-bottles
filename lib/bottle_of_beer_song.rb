require_relative './bottle_number'
class BottleOfBeerSong
  def verse(number)
    number_of_bottles = BottleNumber.for_verse(number)
    next_verse = number_of_bottles.successive
    "#{number_of_bottles.to_s.capitalize} #{number_of_bottles.container} of beer on the wall, #{number_of_bottles.to_s} #{number_of_bottles.container} of beer.\n" +
      "#{number_of_bottles.action}, #{next_verse.to_s} #{next_verse.container} of beer on the wall.\n"
  end
end