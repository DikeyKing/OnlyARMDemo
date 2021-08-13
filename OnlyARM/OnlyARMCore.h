//
//  OnlyARMCore.h
//  OnlyARM
//
//  Created by Dikey on 2021/8/12.
//

#import <Foundation/Foundation.h>

@interface OnlyARMCore : NSObject

+ (instancetype)shared;

- (void)saySomething;

- (void)sayHi;

+ (void)sayHi_class;

@end
