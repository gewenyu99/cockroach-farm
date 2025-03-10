//
//  testTests.swift
//  testTests
//
//  Created by Wen Yu Ge on 2025-03-10.
//

import XCTest

final class testTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() throws {
        XCTAssertEqual(1, 1, "test 1 == 1")
    }
    
    
    func testExample2() throws {
        XCTAssertEqual(1, 2, "test 1 != 2")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
