//
//  UIColor+Additions.m
//
//  Created by Gardner, Matt on 2/5/13.
//  Copyright (c) 2013 Matthew Gardner. All rights reserved.
//

#import "UIColor+Additions.h"

@implementation UIColor (Additions)

+ (UIColor*)colorWithHexValue:(NSString*)hexValue
{
    UIColor *defaultResult = [UIColor blackColor];
    
    // Strip leading # if there is one
    if ([hexValue hasPrefix:@"#"] && [hexValue length] > 1) {
        hexValue = [hexValue substringFromIndex:1];
    }
    
    NSUInteger componentLength = 0;
    if ([hexValue length] == 3)
        componentLength = 1;
    else if ([hexValue length] == 6)
        componentLength = 2;
    else
        return defaultResult;
    
    BOOL isValid = YES;
    CGFloat components[3];
    
    for (NSUInteger i = 0; i < 3; i++) {
        NSString *component = [hexValue substringWithRange:NSMakeRange(componentLength * i, componentLength)];
        if (componentLength == 1) {
            component = [component stringByAppendingString:component];
        }
        NSScanner *scanner = [NSScanner scannerWithString:component];
        unsigned int value;
        isValid &= [scanner scanHexInt:&value];
        components[i] = (CGFloat)value / 256.0;
    }
    
    if (!isValid) {
        return defaultResult;
    }
    
    return [UIColor colorWithRed:components[0]
                           green:components[1]
                            blue:components[2]
                           alpha:1.0];
}

+(UIColor *)colorWith8BitValuesForRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;
{
    CGFloat redFloat = ((CGFloat)red)/255.0;
    CGFloat greenFloat = ((CGFloat)green)/255.0;
    CGFloat blueFloat = ((CGFloat)blue)/255.0;
    
    UIColor *color = [UIColor colorWithRed:redFloat green:greenFloat blue:blueFloat alpha:alpha];
    
    return color;
}

+(UIColor *)colorWith8BitValuesForRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
{
    UIColor *color = [UIColor colorWith8BitValuesForRed:red green:green blue:blue alpha:1];
    
    return color;
}

@end
