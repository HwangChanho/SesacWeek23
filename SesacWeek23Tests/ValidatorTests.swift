//
//  ValidatorTests.swift
//  SesacWeek23Tests
//
//  Created by AlexHwang on 2022/03/02.
//

import XCTest
@testable import SesacWeek23

class ValidatorTests: XCTestCase {
    
    var sut: Validator!

    override func setUpWithError() throws {
        sut = Validator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testValidator_ValidID_ReturnTrue() throws {
        // Given
        let user = User(email: "cksgh0316@gmail.com", password: "123456", check: "123456")
        
        // When
        let valid = sut.isValidID(id: user.email)
        
        // Then
        XCTAssertTrue(valid, "@없거나 6글자 미만")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
