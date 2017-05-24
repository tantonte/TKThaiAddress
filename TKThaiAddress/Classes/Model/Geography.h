//
//  Geography.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import "SQLiteDataModel.h"

@interface Geography : SQLiteDataModel

// `geography` (`GEO_ID`, `GEO_NAME`)

@property (strong, nonatomic) NSString *GEO_ID;
@property (strong, nonatomic) NSString *GEO_NAME;

@end
