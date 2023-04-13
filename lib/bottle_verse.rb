require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    number_of_bottles = Bottles.for_verse(number)
    next_verse = number_of_bottles.successive
    "#{number_of_bottles.quantity.capitalize} #{container(number_of_bottles)} of beer on the wall, #{number_of_bottles.quantity} #{container(number_of_bottles)} of beer.\n" +
      "#{action(number_of_bottles)}, #{next_verse.quantity} #{container(next_verse)} of beer on the wall.\n"
  end

  private

  def container(number)
    number.container
  end

  def action(number)
    number.action
  end
end
