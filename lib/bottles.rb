require_relative './no_bottles'
require_relative './bottle'
class Bottles
  def self.for_verse(number)
    {
      0 => NoBottles.new,
      1 => Bottle.new(1),
    }.fetch(number, new(number))
  end

  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def container
    "bottles"
  end

  def action
    "Take one down and pass it around"
  end

  def successive
    Bottles.for_verse(@number - 1)
  end
end
