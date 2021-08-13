//
//  OnlyARMCore+OnlyARMCore_DynamicMethod.h
//  OnlyARM
//
//  Created by Dikey on 2021/8/12.
//

#if (TARGET_CPU_ARM64)
#else

#import "OnlyARMCore.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Weverything"

@implementation OnlyARMCore

+ (instancetype)shared
{
    static OnlyARMCore *core;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        core = [OnlyARMCore new];
    });
    return core;
}

@end

@interface OnlyARMCore (OnlyARMCore_DynamicMethod)
@end

#pragma clang diagnostic pop

#endif
