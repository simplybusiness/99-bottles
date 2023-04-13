class NoBottles
  def initialize(number = 0)
    @number = number
  end

  def quantity
    'no more'
  end

  def container
    'bottles'
  end

  def successive
    Bottles.new(99)
  end

  def action
    "Go to the store and buy some more"
  end

  def to_i
    @number
  end
end
