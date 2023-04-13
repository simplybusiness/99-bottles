require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    number_of_bottles = Bottles.for_verse(number)
    next_verse = number_of_bottles.successive
    "#{quantity(number_of_bottles).capitalize} #{container(number_of_bottles)} of beer on the wall, #{quantity(number_of_bottles)} #{container(number_of_bottles)} of beer.\n" +
      "#{action(number_of_bottles)}, #{quantity(next_verse)} #{container(next_verse)} of beer on the wall.\n"
  end

  private

  def quantity(number)
    number.quantity
  end

  def container(number)
    number.container
  end

  def action(number)
    number.action
  end

  def bottles(number)
    if number == 0
      NoBottles.new(0)
    else
      Bottles.new(number)
    end
  end
end
