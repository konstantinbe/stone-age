//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2014 Konstantin Bender. All rights reserved.
//

#import "SAHelloWorldController+Private.h"

@implementation SAHelloWorldController

#pragma mark -
#pragma mark Life-Cycle

- (instancetype)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle {
    self = [super initWithNibName:nibName bundle:bundle];
    if (self != nil) {
        [self helloWorldControllerLoad];
    }
    return self;
}

- (void)dealloc {
    [self helloWorldControllerUnload];
}

#pragma mark -
#pragma mark Private

- (void)helloWorldControllerLoad {
    [self helloWorldControllerSetUpSelf];
    [self helloWorldControllerSetUpHelloWorldView];
    [self helloWorldControllerHookUp];
}

- (void)helloWorldControllerUnload {
    [self helloWorldControllerBreakUp];
    [self helloWorldControllerTearDownHelloWorldView];
    [self helloWorldControllerTearDownSelf];
}

- (void)helloWorldControllerSetUpSelf {
    // Nothing to do yet.
}

- (void)helloWorldControllerTearDownSelf {
    // Nothing to do yet.
}

- (void)helloWorldControllerSetUpHelloWorldView {
    SAHelloWorldView *const helloWorldView = [SAHelloWorldView new];
    [helloWorldView.layer setCornerRadius:5.0];
    [helloWorldView.layer setBorderWidth:1.0];
    [self setHelloWorldView:helloWorldView];
}

- (void)helloWorldControllerTearDownHelloWorldView {
    [self setHelloWorldView:nil];
}

- (void)helloWorldControllerHookUp {
    [self setView:self.helloWorldView];
}

- (void)helloWorldControllerBreakUp {
    [self setView:nil];
}

@end
