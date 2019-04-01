//
//  ObjCWrapperTutorialTests.swift
//  ObjCWrapperTutorialTests
//
//  Created by ceciliah on 2/27/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

import XCTest
import CppDependencyTutorial

class ObjCWrapperTutorialTests: XCTestCase {

    func testMacro() {
        let max = maxInt(3, 7)
        XCTAssertEqual(max, 7)
    }

    func testGlobalVariable() {
        XCTAssertEqual(versionNum, 1001)
    }

    func testFunction() {
        let lib = CppDependencyWrapper()
        let result = lib.randomString(4)
        print("finally swift \(result)")
    }

    func testStruct() {
        let nationality = Nationality()
        nationality.identifier = 123
        nationality.country = "Sweden"

        XCTAssertEqual(nationality.identifier, 123)
        XCTAssertEqual(nationality.country, "Sweden")
        nationality.printCountry();
    }

    func testEnum() {
        let currentDay = currentDayOfWeek()
        //https://developer.apple.com/documentation/foundation/nscalendar/unit/1416394-weekday
        let SResult = Calendar.current.dateComponents([.weekday], from: Date()).weekday! - 1
        XCTAssertEqual(currentDay.rawValue, SResult)
    }

    func testBlock() {
        let result = functionPointer(5) { (val) -> Int32 in
            return 5*5
        }
        XCTAssertEqual(result, 25)
    }
}
