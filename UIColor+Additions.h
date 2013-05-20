//
//  UIColor+Additions.h
//
//  Created by Gardner, Matt on 2/5/13.
//  Copyright (c) 2013 Matthew Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Additions)

+ (UIColor*)colorWithHexValue:(NSString*)hexValue;
+(UIColor *)colorWith8BitValuesForRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
+(UIColor *)colorWith8BitValuesForRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

@end
