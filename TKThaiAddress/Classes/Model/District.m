//
//  District.m
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "District.h"

@implementation District

- (instancetype)initWithValue:(NSDictionary *)value
{
    if(self = [super init]){
        _DISTRICT_ID = value[@"DISTRICT_ID"];
        _DISTRICT_CODE = value[@"DISTRICT_CODE"];
        _DISTRICT_NAME = value[@"DISTRICT_NAME"];
        _DISTRICT_NAME_ENG = value[@"DISTRICT_NAME_ENG"];
        _AMPHUR_ID = value[@"AMPHUR_ID"];
        _PROVINCE_ID = value[@"PROVINCE_ID"];
        _GEO_ID = value[@"GEO_ID"];
    }
    return self;
}

- (NSString *)title{ return _DISTRICT_NAME; }

@end
