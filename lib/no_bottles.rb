class NoBottles
  def quantity
    'no more'
  end

  def container
    'bottles'
  end

  def action
    "Go to the store and buy some more"
  end

  def successive
    Bottles.new(99)
  end

  def inspect
    '0'
  end
end
