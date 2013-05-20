//
//  NSError+Additions.h
//
//  Created by Gardner, Matt on 2/19/13.
//  Copyright (c) 2013 Matthew Gardner, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (Additions)

+(NSError *)errorWithDescription:(NSString *)desc;
+(NSError *)errorWithDescription:(NSString *)desc domain:(NSString *)domain code:(NSInteger)code;

@end
