//
//  Province.m
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "Province.h"

@implementation Province

- (instancetype)initWithValue:(NSDictionary *)value
{
    if(self = [super init]){
        _PROVINCE_ID = value[@"PROVINCE_ID"];
        _PROVINCE_CODE = value[@"PROVINCE_CODE"];
        _PROVINCE_NAME = value[@"PROVINCE_NAME"];
        _PROVINCE_NAME_ENG = value[@"PROVINCE_NAME_ENG"];
        _GEO_ID = value[@"GEO_ID"];
    }
    return self;
}

- (NSString *)title{ return _PROVINCE_NAME; }

@end
