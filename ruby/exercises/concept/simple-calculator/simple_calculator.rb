class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
    def initialize(msg = 'Unsupported operation')
      super
    end
  end

  def self.calculate(first_operand, second_operand, operation)

    raise SimpleCalculator::UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
    raise ZeroDivisionError.new('Division by zero is not allowed.') if operation == '/' && second_operand.zero?

    result_oper = case operation
                  when '+'
                    first_operand + second_operand
                  when '*'
                    first_operand * second_operand
                  else
                    first_operand / second_operand
                  end

    "#{first_operand} #{operation} #{second_operand} = #{result_oper}"
  rescue ZeroDivisionError => e
    e.message
  end
end
