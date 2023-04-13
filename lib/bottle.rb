class Bottle
  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def successive
    NoBottles.new(0)
  end

  def container
    'bottle'
  end

  def action
    "Take it down and pass it around"
  end
end
