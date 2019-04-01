//
//  CppDependencyWrapper.m
//  CppDependencyTutorial
//
//  Created by ceciliah on 2/27/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

#import "CHCppDependencyWrapper.h"
#import "ExampleC++Library/ExampleCppLibrary.h"
#import <string>
#import <iostream>

#pragma mark - Macro

NSInteger maxInt(NSInteger x, NSInteger y) {
    return getMax(x, y);
}

float maxFloat(float x, float y) {
    return getMax(x, y);
}

double maxIntDouble(double x, double y) {
    return getMax(x, y);
}

#pragma mark - Global variable

const int versionNum = versionNumber;

#pragma mark - Function
// For the fun of it, I put the function into a class, but we don't have to. Can just use global c function syntax as well.
@implementation CHCppDependencyWrapper{
    ExampleCppLibrary *lib;}

-(instancetype)init {
    if (self = [super init]) {
        lib = new ExampleCppLibrary(1);}
    return self;
}

-(void)dealloc { delete lib; }

-(NSString *)randomString:(int)size {
    std::string randomStr = lib->randomString(size);
    const char * chars = randomStr.c_str();
    return [[NSString alloc] initWithCString:chars
                                    encoding:NSUTF8StringEncoding];
}

@end

#pragma mark - Struct -> Class

@implementation CHNationality

-(CNationality)nationality {
    const char * cChars = [self.country cStringUsingEncoding:NSUTF8StringEncoding];
    std::string cppString(cChars);

    CNationality na;
    na.identifier = (int)self.identifier;
    na.country = cppString;
    return na;
}

-(void)printNationalityCountry {
    printCNationalityCountry(self.nationality);
}

@end

#pragma mark - Enum

//C function
DayOfWeek toDayOfWeek(曜日 anyDay) {
    switch (anyDay) {
        case 月曜日:
            return Monday;
            break;
        case 火曜日:
            return Tuesday;
            break;
        case 水曜日:
            return Wednesday;
            break;
        case 木曜日:
            return Thursday;
            break;
        case 金曜日:
            return Friday;
            break;
        case 土曜日:
            return Saturday;
            break;
        case 日曜日:
            return Sunday;
            break;
        default:
            break;
    }
}

DayOfWeek currentDayOfWeek() {
    曜日 result = 現在の曜日();
    return toDayOfWeek(result);
}

#pragma mark - Function Wrapper

int functionPointer(int startValue, int (*getNextValue)(int)) {
    return getNextValue(startValue);
}
