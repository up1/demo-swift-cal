import XCTest
@testable import IMC_Calculator

class IMCCalculatorTests: XCTestCase {

    func testFailure_With_Divide_Input_1_And_0_Should_Be_0() {
        // Arrange
        let calculator = Calculator()

        // Act
        let actualResult
            = calculator.divide(operand1: 1, operand2: 0)

        // Assert
        XCTAssertEqual(0, actualResult)
    }

    func testSucess_With_Divide_Input_1_And_1_Should_Be_1() {
        // Arrange
        let calculator = Calculator()

        // Act
        let actualResult
            = calculator.divide(operand1: 1, operand2: 1)

        // Assert
        XCTAssertEqual(1, actualResult)
    }

    func testSucess_With_Plus_Input_1_And_1_Should_Be_2() {
        // Arrange
        let calculator = Calculator()

        // Act
        let actualResult
            = calculator.plus(operand1: 1, operand2: 1)

        // Assert
        XCTAssertEqual(2, actualResult)
    }

}
