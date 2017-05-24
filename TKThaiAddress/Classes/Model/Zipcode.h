//
//  Zipcode.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "SQLiteDataModel.h"

@interface Zipcode : SQLiteDataModel

//  `zipcodes` (`id`, `district_code`, `zipcode`)

@property (strong, nonatomic) NSString *ID;
@property (strong, nonatomic) NSString *DISTRICT_CODE;
@property (strong, nonatomic) NSString *ZIPCODE;

@end
