//
//  District.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "SQLiteDataModel.h"

@interface District : SQLiteDataModel

//  `districts` (`DISTRICT_ID`, `DISTRICT_CODE`, `DISTRICT_NAME`, `DISTRICT_NAME_ENG`, `AMPHUR_ID`, `PROVINCE_ID`, `GEO_ID`)

@property (strong, nonatomic) NSString *DISTRICT_ID;
@property (strong, nonatomic) NSString *DISTRICT_CODE;
@property (strong, nonatomic) NSString *DISTRICT_NAME;
@property (strong, nonatomic) NSString *DISTRICT_NAME_ENG;
@property (strong, nonatomic) NSString *AMPHUR_ID;
@property (strong, nonatomic) NSString *PROVINCE_ID;
@property (strong, nonatomic) NSString *GEO_ID;

@end
