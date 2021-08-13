//
//  ViewController.m
//  OnlyARMDemo
//
//  Created by Dikey on 2021/8/12.
//

#import "ViewController.h"
#import "OnlyARMCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[OnlyARMCore shared]saySomething];
    [[OnlyARMCore shared]sayHi];
    
    [OnlyARMCore sayHi_class];
}


@end
