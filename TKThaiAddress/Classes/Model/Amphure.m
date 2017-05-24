//
//  Amphure.m
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "Amphure.h"

@implementation Amphure

- (instancetype)initWithValue:(NSDictionary *)value
{
    if(self = [super init]){
        _AMPHUR_ID = value[@"AMPHUR_ID"];
        _AMPHUR_CODE = value[@"AMPHUR_CODE"];
        _AMPHUR_NAME = value[@"AMPHUR_NAME"];
        _AMPHUR_NAME_ENG = value[@"AMPHUR_NAME_ENG"];
        _PROVINCE_ID = value[@"PROVINCE_ID"];
        _GEO_ID = value[@"GEO_ID"];
    }
    return self;
}

- (NSString *)title{ return _AMPHUR_NAME; }

@end
