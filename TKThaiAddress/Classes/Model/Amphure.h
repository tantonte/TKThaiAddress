//
//  Amphure.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "SQLiteDataModel.h"

@interface Amphure : SQLiteDataModel

// `amphures` (`AMPHUR_ID`, `AMPHUR_CODE`, `AMPHUR_NAME`, `AMPHUR_NAME_ENG`, `GEO_ID`, `PROVINCE_ID`)

@property (strong, nonatomic) NSString *AMPHUR_ID;
@property (strong, nonatomic) NSString *AMPHUR_CODE;
@property (strong, nonatomic) NSString *AMPHUR_NAME;
@property (strong, nonatomic) NSString *AMPHUR_NAME_ENG;
@property (strong, nonatomic) NSString *GEO_ID;
@property (strong, nonatomic) NSString *PROVINCE_ID;

@end
