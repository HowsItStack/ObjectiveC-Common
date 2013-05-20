//
//  UIView+LayoutAdditions.h
//
//  Created by Matthew Gardner on 1/3/12.
//  Copyright (c) 2012 Matthew Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LayoutAdditions)

@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat bottom;
@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;
@property(nonatomic) CGSize size;
@property(nonatomic) CGPoint origin;
@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;

@end
