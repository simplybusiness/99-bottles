require_relative './no_bottles'
class Bottles
  def self.for_verse(number)
    if number == 0
      NoBottles.new(0)
    else
      new(number)
    end
  end

  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def successive
    Bottles.for_verse(@number - 1)
  end

  def container
    if @number == 1
      'bottle'
    else
      "bottles"
    end
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def to_i
    @number
  end

  private

  def pronoun
    if @number == 1
      'it'
    else
      'one'
    end
  end
end