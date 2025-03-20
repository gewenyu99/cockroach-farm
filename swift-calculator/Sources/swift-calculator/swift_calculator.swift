public struct Calculator {
    public init() {}
    
    public func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    public func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    public func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    public func divide(_ a: Double, _ b: Double) throws -> Double {
        guard b != 0 else {
            throw CalculatorError.divisionByZero
        }
        return a / b
    }
}

public enum CalculatorError: Error {
    case divisionByZero
}

// The Swift Programming Language
// https://docs.swift.org/swift-book
