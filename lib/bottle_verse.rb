require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    number_of_bottles = Bottles.for_verse(number)
    next_verse = number_of_bottles.successive
    "#{number_of_bottles.quantity.capitalize} #{number_of_bottles.container} of beer on the wall, #{number_of_bottles.quantity} #{number_of_bottles.container} of beer.\n" +
      "#{number_of_bottles.action}, #{next_verse.quantity} #{next_verse.container} of beer on the wall.\n"
  end
end
