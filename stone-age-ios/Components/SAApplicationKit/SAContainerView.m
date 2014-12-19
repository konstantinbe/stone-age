//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2014 Konstantin Bender. All rights reserved.
//

#import "SAContainerView+Private.h"

@implementation SAContainerView

#pragma mark -
#pragma mark Override & Forward

- (void)layoutSubviews {
    [super layoutSubviews];
    [self containerViewLayoutSubviews:self];
}

#pragma mark -
#pragma mark Forward Delegate Methods

- (void)containerViewLayoutSubviews:(SAContainerView *)containerView {
    id<SAContainerViewDelegate> const delegate = [self delegate];
    if ([delegate respondsToSelector:@selector(containerViewLayoutSubviews:)]) {
        [delegate containerViewLayoutSubviews:containerView];
    }
}

@end
