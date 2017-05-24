//
//  Geography.m
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "Geography.h"

@implementation Geography

- (instancetype)initWithValue:(NSDictionary *)value
{
    if(self = [super init]){
        _GEO_ID = value[@"GEO_ID"];
        _GEO_NAME = value[@"GEO_NAME"];
    }
    return self;
}

- (NSString *)title{ return _GEO_NAME; }

@end
