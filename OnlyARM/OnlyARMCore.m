//
//  OnlyARMCore.m
//  OnlyARM
//
//  Created by Dikey on 2021/8/12.
//
#if (TARGET_CPU_ARM64)

#import "OnlyARMCore.h"
#import "OnlyEvil64.h"

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

- (void)saySomething
{
    NSLog(@"Hello~");
}

- (void)sayHi
{
    [OnlyEvil64 evil64];
}

+ (void)sayHi_class
{
    NSLog(@"sayHi_class");
}

@end

#else
#endif

