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
    Bottles.new(99).to_i
  end

  def action
    "Go to the store and buy some more"
  end
end
