require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(successive(number))} #{container(successive(number))} of beer on the wall.\n"
  end

  private

  def quantity(number)
    bottles(number).quantity
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
