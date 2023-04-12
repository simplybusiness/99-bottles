class Bottles
  def initialize(number)
    @number = number
  end

  def quantity
    @number.to_s
  end

  def successive
    Bottles.new(@number - 1).to_i
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
