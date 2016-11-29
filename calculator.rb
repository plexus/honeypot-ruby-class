class Calculator
  def initialize(initial_value)
    @result = initial_value
  end

  def set_result(r)
    @result = r
  end

  def add(x)
    self.set_result(@result + x)
  end

  def reset
    set_result(0)
  end

  def result
    @result
  end

  def print_result
    CalculatorPrinter.new.print_calculator(self)
  end
end

class CalculatorPrinter
  def print_calculator(calculator)
    puts "==== result: #{calculator.result} ====="
  end
end
