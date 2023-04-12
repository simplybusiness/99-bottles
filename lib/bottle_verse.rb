require_relative './no_bottles'
class BottleVerse
  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(successive(number))} #{container(successive(number))} of beer on the wall.\n"
  end

  private

  def quantity(number)
    if number == 0
      NoBottles.new.quantity(number)
    else
      number.to_s
    end
  end

  def successive(number)
    if number == 0
      NoBottles.new.successive(number)
    else
      number - 1
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
      NoBottles.new.action(number)
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
