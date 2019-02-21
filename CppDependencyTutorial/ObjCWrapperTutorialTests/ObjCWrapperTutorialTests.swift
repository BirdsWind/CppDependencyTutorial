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

    func testWrapperFunction() {
        let wrapper = CppDependencyWrapper()
        let result = wrapper.randomString(with: 10)
        print("result is \(result)")
    }
}
