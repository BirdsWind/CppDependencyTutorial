//
//  ExampleC__LibraryTests.m
//  ExampleC++LibraryTests
//
//  Created by ceciliah on 2/19/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <ExampleC++Library/ExampleCppLibrary.h>
#include <iostream>

@interface ExampleCppLibraryTests : XCTestCase

@end

@implementation ExampleCppLibraryTests

- (void)testRandomString {
    ExampleCppLibrary lib;
    std::string random = lib.randomString(10);
    std::cout<<"random string "<<random<<std::endl;
}

@end
