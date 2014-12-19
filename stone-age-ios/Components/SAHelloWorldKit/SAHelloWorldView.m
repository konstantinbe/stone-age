//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2014 Konstantin Bender. All rights reserved.
//

#import "SAHelloWorldView+Private.h"

@implementation SAHelloWorldView

#pragma mark -
#pragma mark Defaults

+ (UIColor *)defaultBackgroundColor {
    return [UIColor colorWithWhite:0.95 alpha:1.0];
}

+ (UIFont *)defaultFont {
    return [UIFont systemFontOfSize:30];
}

#pragma mark -
#pragma mark Life-Cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self != nil) {
        [self helloWorldViewLoad];
    }
    return self;
}

- (void)dealloc {
    [self helloWorldViewUnload];
}

#pragma mark -
#pragma mark Sizing

- (CGSize)sizeThatFits:(CGSize)size {
    NSDictionary *const layout = [self helloWorldViewLayoutForSize:size];
    return [layout[@"sizeThatFits"] CGSizeValue];
}

#pragma mark -
#pragma mark Private

- (void)helloWorldViewLoad {
    [self helloWorldViewSetUpSelf];
    [self helloWorldViewSetUpLabel];
    [self helloWorldViewHookUp];
}

- (void)helloWorldViewUnload {
    [self helloWorldViewBreakUp];
    [self helloWorldViewTearDownLabel];
    [self helloWorldViewTearDownSelf];
}

- (void)helloWorldViewSetUpSelf {
    [self setBackgroundColor:[self.class defaultBackgroundColor]];
}

- (void)helloWorldViewTearDownSelf {
    [self setBackgroundColor:nil];
}

- (void)helloWorldViewSetUpLabel {
    UILabel *const label = [UILabel new];
    [label setText:NSLocalizedString(@"Hello World!", @"")];
    [label setFont:[self.class defaultFont]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self setLabel:label];
}

- (void)helloWorldViewTearDownLabel {
    [self setLabel:nil];
}

- (void)helloWorldViewHookUp {
    [self addSubview:self.label];
}

- (void)helloWorldViewBreakUp {
    [self.label removeFromSuperview];
}

#pragma mark -
#pragma mark Private | Layout

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect const bounds = [self bounds];
    NSDictionary *const layout = [self helloWorldViewLayoutForSize:bounds.size];
    [self.label setFrame:[layout[@"labelFrame"] CGRectValue]];
}

- (NSDictionary *)helloWorldViewLayoutForSize:(CGSize)size {
    UIEdgeInsets const edgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    CGSize const labelSizeThatFits = [self.label sizeThatFits:size];

    CGFloat const labelX = edgeInsets.left;
    CGFloat const labelY = edgeInsets.top;
    CGFloat const labelWidth = size.width - edgeInsets.left - edgeInsets.right;
    CGFloat const labelHeight = size.height - edgeInsets.top - edgeInsets.bottom;
    CGRect const labelFrame = CGRectMake(labelX, labelY, labelWidth, labelHeight);

    CGFloat const heightThatFits = edgeInsets.left + labelSizeThatFits.width + edgeInsets.right;
    CGFloat const widthThatFits = edgeInsets.top + labelSizeThatFits.height + edgeInsets.bottom;
    CGSize const sizeThatFits = CGSizeMake(heightThatFits, widthThatFits);

    NSDictionary *const layout = @{
        @"size": [NSValue valueWithCGSize:size],
        @"labelFrame": [NSValue valueWithCGRect:labelFrame],
        @"sizeThatFits": [NSValue valueWithCGSize:sizeThatFits]
    };

    // NOTE: Having an explicit reference for the final layout dictionary
    // instead of returning it immediately helps when debugging layout code.

    return layout;
}

@end
