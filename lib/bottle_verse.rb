require_relative './no_bottles'
require_relative './bottles'
class BottleVerse
  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(successive(number))} #{container(successive(number))} of beer on the wall.\n"
  end

  private

  def quantity(number)
    if number == 0
      NoBottles.new(0).quantity
    else
      Bottles.new(number).quantity
    end
  end

  def successive(number)
    if number == 0
      NoBottles.new(0).successive
    else
      Bottles.new(number).successive
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      "bottles"
    end
  end

  def action(number)
    if number == 0
      NoBottles.new(0).action
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end
end
