//
//  UIView+LayoutAdditions.m
//
//  Created by Matthew Gardner on 1/3/12.
//  Copyright (c) 2012 Matthew Gardner. All rights reserved.
//

#import "UIView+LayoutAdditions.h"


@implementation UIView (LayoutAdditions)

-(CGFloat)top
{
    return self.frame.origin.y;
}

-(void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

-(CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

-(void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}

-(CGFloat)left
{
    return self.frame.origin.x;
}

-(void)setLeft:(CGFloat)left
{
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

-(CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

-(void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}

-(CGFloat)width
{
    return self.frame.size.width;
}

-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat)height
{
    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(CGSize)size
{
    return self.frame.size;
}

-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGPoint)origin
{
    return self.frame.origin;
}

-(void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(CGFloat)centerX
{
    return self.center.x;
}

-(void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

-(CGFloat)centerY
{
    return self.center.y;
}

-(void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

@end
