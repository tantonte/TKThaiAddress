//
//  Province.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "SQLiteDataModel.h"

@interface Province : SQLiteDataModel

//`provinces` (`PROVINCE_ID`, `PROVINCE_CODE`, `PROVINCE_NAME`, `PROVINCE_NAME_ENG`, `GEO_ID`)

@property (strong, nonatomic) NSString *PROVINCE_ID;
@property (strong, nonatomic) NSString *PROVINCE_CODE;
@property (strong, nonatomic) NSString *PROVINCE_NAME;
@property (strong, nonatomic) NSString *PROVINCE_NAME_ENG;
@property (strong, nonatomic) NSString *GEO_ID;

@end
