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

  def container
    if @number == 1
      'bottle'
    else
      "bottles"
    end
  end
end
