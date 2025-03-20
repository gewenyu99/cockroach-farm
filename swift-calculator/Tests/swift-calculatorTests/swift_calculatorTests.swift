import XCTest
@testable import swift_calculator

// Base test class with common setup
class BaseCalculatorTests: XCTestCase {
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
}

// Test class for addition operations
final class AdditionTests: BaseCalculatorTests {
    func testAdd() {
        XCTAssertEqual(calculator.add(2, 2), 4)
        XCTAssertEqual(calculator.add(-2, 2), 0)
        XCTAssertEqual(calculator.add(-2, -2), -4)
    }
    
    func testFail() {
        XCTAssertEqual(calculator.add(2, 2), 5)
    }
}

// Test class for subtraction operations
final class SubtractionTests: BaseCalculatorTests {
    func testSubtract() {
        XCTAssertEqual(calculator.subtract(4, 2), 2)
        XCTAssertEqual(calculator.subtract(2, 4), -2)
        XCTAssertEqual(calculator.subtract(-2, -4), 2)
    }
}

// Test class for multiplication operations
final class MultiplicationTests: BaseCalculatorTests {
    func testMultiply() {
        XCTAssertEqual(calculator.multiply(3, 3), 9)
        XCTAssertEqual(calculator.multiply(-3, 3), -9)
        XCTAssertEqual(calculator.multiply(-3, -3), 9)
    }
}

// Test class for division operations
final class DivisionTests: BaseCalculatorTests {
    func testDivide() {
        XCTAssertEqual(try! calculator.divide(6, 2), 3)
        XCTAssertEqual(try! calculator.divide(-6, 2), -3)
        XCTAssertEqual(try! calculator.divide(-6, -2), 3)
    }
    
    func testDivideByZero() {
        XCTAssertThrowsError(try calculator.divide(1, 0)) { error in
            XCTAssertEqual(error as? CalculatorError, .divisionByZero)
        }
    }
}

// Modern Swift testing (using Testing framework)
import Testing
@testable import swift_calculator

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}