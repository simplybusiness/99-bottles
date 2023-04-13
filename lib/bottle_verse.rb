require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    number_of_bottles = bottles(number)
    "#{quantity(number_of_bottles).capitalize} #{container(number)} of beer on the wall, #{quantity(number_of_bottles)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(successive(number).to_i)} #{container(successive(number).to_i)} of beer on the wall.\n"
  end

  private

  def quantity(number)
    if number.is_a?(Integer)
      bottles(number).quantity
    else
      number.quantity
    end
  end

  def successive(number)
    bottles(number).successive
  end

  def container(number)
    bottles(number).container
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
