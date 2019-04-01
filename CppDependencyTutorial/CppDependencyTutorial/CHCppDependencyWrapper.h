//
//  CppDependencyWrapper.h
//  CppDependencyTutorial
//
//  Created by ceciliah on 2/27/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Macro

#ifdef __cplusplus
extern "C" {
#endif
    NSInteger maxInt(NSInteger x, NSInteger y);
    double maxDouble(double x, double y);
    float maxFloat(float x, float y);
    //instead of global maybe I should put it as class method
    //because otherwise it is global, it will be a c function

#ifdef __cplusplus
}
#endif

#pragma mark - Global variable

extern const int versionNum;

#pragma mark - Function

NS_SWIFT_NAME(CppDependencyWrapper)
@interface CHCppDependencyWrapper: NSObject
-(NSString *)randomString:(int)size;

@end

#pragma mark - Struct -> Class

NS_SWIFT_NAME(Nationality)
@interface CHNationality: NSObject

@property (nonatomic) NSInteger identifier;
@property (nonatomic, copy) NSString * country;

-(void)printNationalityCountry;

@end

#pragma mark - Enum
typedef NS_ENUM(NSInteger, DayOfWeek) {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
};

#ifdef __cplusplus
extern "C" {
#endif
DayOfWeek currentDayOfWeek();
#ifdef __cplusplus
}
#endif



#pragma mark - Function Pointer Wrapper

#ifdef __cplusplus
extern "C" {
#endif
int functionPointer(int startValue, int (*getNextValue)(int));
#ifdef __cplusplus
}
#endif



NS_ASSUME_NONNULL_END
