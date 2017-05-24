//
//  Zipcode.m
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "Zipcode.h"

@implementation Zipcode

- (instancetype)initWithValue:(NSDictionary *)value
{
    if(self = [super init]){
        _ID = value[@"id"];
        _DISTRICT_CODE = value[@"district_code"];
        _ZIPCODE = value[@"zipcode"];
    }
    return self;
}

- (NSString *)title{ return _ZIPCODE; }

@end
