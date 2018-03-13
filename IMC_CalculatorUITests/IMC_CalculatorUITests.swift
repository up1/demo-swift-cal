import XCTest

class IMCCalculatorUITests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false    }

    override func tearDown() {
        super.tearDown()
    }

    func testDivide() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        snapshot("step01")
        app.textFields["operand1"].tap()
        app.textFields["operand1"].typeText("1")

        snapshot("step02")
        app.textFields["operand2"].tap()
        app.textFields["operand2"].typeText("1")

        snapshot("step03")
        app.buttons["divideBtn"].tap()
        app.buttons["summaryBtn"].tap()
        XCTAssertEqual("Result=1", app.staticTexts["resultLB"].label)
        snapshot("step04")
    }

    func testPlus() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        snapshot("step01-plus")
        app.textFields["operand1"].tap()
        app.textFields["operand1"].typeText("1")

        app.textFields["operand2"].tap()
        app.textFields["operand2"].typeText("1")
        snapshot("step02-plus")

        app.buttons["plusBtn"].tap()
        app.buttons["summaryBtn"].tap()
        snapshot("step03-plus")

        XCTAssertEqual("Result=2", app.staticTexts["resultLB"].label)
        snapshot("step04-plus")

    }

}
