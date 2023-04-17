require_relative './no_bottles'
require_relative './bottle'
class BottleNumber
  def self.for_verse(number)
    {
      0 => NoBottles.new,
      1 => Bottle.new(1),
    }.fetch(number, new(number))
  end

  def initialize(number)
    @number = number
  end

  def container
    "bottles"
  end

  def action
    "Take one down and pass it around"
  end

  def successive
    BottleNumber.for_verse(@number - 1)
  end

  def inspect
    @number.to_s
  end

  def to_s
    @number.to_s
  end
end
