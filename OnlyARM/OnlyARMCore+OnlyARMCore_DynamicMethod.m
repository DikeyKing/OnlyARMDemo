//
//  OnlyARMCore+OnlyARMCore_DynamicMethod.m
//  OnlyARM
//
//  Created by Dikey on 2021/8/12.
//

#if (TARGET_CPU_ARM64)

#else

#import "OnlyARMCore+OnlyARMCore_DynamicMethod.h"
#include <objc/runtime.h>

void OnlyARMCore_dynamicMethodIMP(id self, SEL _cmd) {
    NSLog(@"OnlyARMCore >> 不支持非arm64以外的机型调用 %@", NSStringFromSelector(_cmd));
}

@implementation OnlyARMCore (OnlyARMCore_DynamicMethod)

+ (BOOL)resolveInstanceMethod:(SEL)name
{
    class_addMethod([self class], name, (IMP)OnlyARMCore_dynamicMethodIMP, "v@:");
    return [super resolveInstanceMethod:name];
}

+ (BOOL)resolveClassMethod:(SEL)name
{
    Class class = object_getClass([self class]);
    class_addMethod(class, name, (IMP)OnlyARMCore_dynamicMethodIMP, "@:@");
    return [super resolveClassMethod:name];
}

@end

#endif
