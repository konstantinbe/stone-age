//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2014 Konstantin Bender. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SAContainerViewDelegate.h"

@interface SAContainerView : UIView

@property (weak, nonatomic) id<SAContainerViewDelegate> delegate;

@end
