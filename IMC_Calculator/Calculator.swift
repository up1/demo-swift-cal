import Foundation

class Calculator {

    func plus(operand1: Int, operand2: Int) -> Int {
        return operand1 + operand2
    }

    func divide(operand1: Int, operand2: Int) -> Int {
        if operand2 == 0 {
            return 0
        }
        return operand1 / operand2
    }

}
