class NoBottles
  def container
    'bottles'
  end

  def action
    "Go to the store and buy some more"
  end

  def successive
    BottleNumber.for_verse(99)
  end

  def inspect
    '0'
  end

  def to_s
    'no more'
  end
end
