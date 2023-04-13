class Bottle
  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def container
    'bottle'
  end

  def action
    "Take it down and pass it around"
  end

  def successive
    NoBottles.new
  end

  def inspect
    @number.to_s
  end
end
