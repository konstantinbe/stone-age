//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2014 Konstantin Bender. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAContainerView;

@protocol SAContainerViewDelegate <NSObject>

@optional

- (void)containerViewLayoutSubviews:(SAContainerView *)containerView;

@end
