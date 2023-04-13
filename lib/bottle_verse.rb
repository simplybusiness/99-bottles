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
    bottles = if number == 0
                NoBottles.new(0)
              else
                Bottles.new(number)
              end

    bottles.successive
  end

  def container(number)
    bottles = if number == 0
                NoBottles.new(0)
              else
                Bottles.new(number)
              end

    bottles.container
  end

  def action(number)
    bottles = if number == 0
                NoBottles.new(0)
              else
                Bottles.new(number)
              end

    bottles.action
  end
end
