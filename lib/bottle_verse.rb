require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    number_of_bottles = bottles(number)
    next_verse = number_of_bottles.successive
    "#{quantity(number_of_bottles).capitalize} #{container(number)} of beer on the wall, #{quantity(number_of_bottles)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(next_verse)} #{container(next_verse.to_i)} of beer on the wall.\n"
  end

  private

  def quantity(number)
    number.quantity
  end

  def container(number)
    if number.is_a?(Integer)
      bottles(number).container
    else
      number.container
    end
  end

  def action(number)
    bottles(number).action
  end

  def bottles(number)
    if number == 0
      NoBottles.new(0)
    else
      Bottles.new(number)
    end
  end
end
