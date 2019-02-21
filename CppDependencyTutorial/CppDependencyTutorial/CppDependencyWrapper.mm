//
//  CppDependencyWrapper.m
//  CppDependencyTutorial
//
//  Created by ceciliah on 2/27/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

#import "CppDependencyWrapper.h"
#import "ExampleC++Library/ExampleCppLibrary.h"

@implementation CppDependencyWrapper
{
    ExampleCppLibrary lib;
}

-(NSString *)randomStringWith: (NSUInteger)size {
    std::string cppString = lib.randomString(int(size));
    const char * chars = cppString.c_str();
    return [[NSString alloc] initWithCString:chars encoding:NSUTF8StringEncoding];
}

@end
