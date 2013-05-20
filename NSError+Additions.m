//
//  NSError+Additions.m
//
//  Created by Gardner, Matt on 2/19/13.
//  Copyright (c) 2013 Matthew Gardner, Inc. All rights reserved.
//

#import "NSError+Additions.h"

@implementation NSError (Additions)

static NSString *kNSErrorDefaultDomain = @"NoDomain";
static const NSInteger kNSErrorDefaultCode = 99;

+(NSError *)errorWithDescription:(NSString *)desc
{
    return [self errorWithDescription:desc domain:kNSErrorDefaultDomain code:kNSErrorDefaultCode];
}

+(NSError *)errorWithDescription:(NSString *)desc domain:(NSString *)domain code:(NSInteger)code;
{
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:desc,NSLocalizedDescriptionKey, nil];
    NSError *error = [NSError errorWithDomain:domain code:code userInfo:userInfo];
    return error;
}

@end
