class Bottles
  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def successive
    @number - 1
  end
end
