//
//  TKDatabaseManager.m
//  Pods
//
//  Created by Thanyapat Kosiumnuay on 5/24/2560 BE.
//
//

#import "TKDatabaseManager.h"

@implementation TKDatabaseManager

/*
 `zipcodes` (`id`, `district_code`, `zipcode`)
 `districts` (`DISTRICT_ID`, `DISTRICT_CODE`, `DISTRICT_NAME`, `DISTRICT_NAME_ENG`, `AMPHUR_ID`, `PROVINCE_ID`, `GEO_ID`)
 `amphures` (`AMPHUR_ID`, `AMPHUR_CODE`, `AMPHUR_NAME`, `AMPHUR_NAME_ENG`, `GEO_ID`, `PROVINCE_ID`)
 `provinces` (`PROVINCE_ID`, `PROVINCE_CODE`, `PROVINCE_NAME`, `PROVINCE_NAME_ENG`, `GEO_ID`)
 `geography` (`GEO_ID`, `GEO_NAME`)
 */

+ (TKDatabaseManager *)databaseForThailandAddresses{
    return [[TKDatabaseManager alloc] initWithDatabaseFilename:@"thailand.db"];
}

- (NSArray<Geography *> *)allGeographies{
    NSString *query = @"select * from geography";
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    NSMutableArray<Geography *> *geographies = [[NSMutableArray alloc] init];
    
    for (NSArray *row in results) {
        NSDictionary *value = @{
                                @"GEO_NAME" : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_NAME"]],
                                @"GEO_ID"   : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_ID"]]
                                };
        [geographies addObject:[[Geography alloc] initWithValue:value]];
    }
    return [NSArray arrayWithArray:geographies];
}

- (NSArray<Province *> *)allProvinces{
    NSString *query = @"select * from provinces";
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    NSMutableArray<Province *> *provinces = [[NSMutableArray alloc] init];
    
    for (NSArray *row in results) {
        NSDictionary *value = @{
                                @"PROVINCE_ID"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_ID"]],
                                @"PROVINCE_CODE"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_CODE"]],
                                @"PROVINCE_NAME"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_NAME"]],
                                @"PROVINCE_NAME_ENG": [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_NAME_ENG"]],
                                @"GEO_ID"           : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_ID"]]
                                };
        [provinces addObject:[[Province alloc] initWithValue:value]];
    }
    return [NSArray arrayWithArray:provinces];
}

- (NSArray<Province *> *)provincesInGeography:(Geography *)geography{
    NSString *query = [NSString stringWithFormat:@"select * from provinces where GEO_ID=%@", geography.GEO_ID];
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    NSMutableArray<Province *> *provinces = [[NSMutableArray alloc] init];
    
    for (NSArray *row in results) {
        NSDictionary *value = @{
                                @"PROVINCE_ID"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_ID"]],
                                @"PROVINCE_CODE"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_CODE"]],
                                @"PROVINCE_NAME"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_NAME"]],
                                @"PROVINCE_NAME_ENG": [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_NAME_ENG"]],
                                @"GEO_ID"           : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_ID"]]
                                };
        [provinces addObject:[[Province alloc] initWithValue:value]];
    }
    return [NSArray arrayWithArray:provinces];
}

- (NSArray<Amphure *> *)amphuresInProvince:(Province *)province{
    NSString *query = [NSString stringWithFormat:@"select * from amphures where PROVINCE_ID=%@", province.PROVINCE_ID];
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    NSMutableArray<Amphure *> *amphures = [[NSMutableArray alloc] init];
    
    for (NSArray *row in results) {
        NSDictionary *value = @{
                                @"AMPHUR_ID"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"AMPHUR_ID"]],
                                @"AMPHUR_CODE"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"AMPHUR_CODE"]],
                                @"AMPHUR_NAME"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"AMPHUR_NAME"]],
                                @"AMPHUR_NAME_ENG": [row objectAtIndex:[self.arrColumnNames indexOfObject:@"AMPHUR_NAME_ENG"]],
                                @"GEO_ID"         : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_ID"]],
                                @"PROVINCE_ID"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_ID"]]
                                };
        [amphures addObject:[[Amphure alloc] initWithValue:value]];
    }
    return [NSArray arrayWithArray:amphures];
}

- (NSArray<District *> *)districtsInAmphure:(Amphure *)amphure{
    NSString *query = [NSString stringWithFormat:@"select * from districts where AMPHUR_ID=%@", amphure.AMPHUR_ID];
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    NSMutableArray<District *> *districts = [[NSMutableArray alloc] init];
    
    for (NSArray *row in results) {
        NSDictionary *value = @{
                                @"DISTRICT_ID"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"DISTRICT_ID"]],
                                @"DISTRICT_CODE"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"DISTRICT_CODE"]],
                                @"DISTRICT_NAME"    : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"DISTRICT_NAME"]],
                                @"DISTRICT_NAME_ENG": [row objectAtIndex:[self.arrColumnNames indexOfObject:@"DISTRICT_NAME_ENG"]],
                                @"AMPHUR_ID"        : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"AMPHUR_ID"]],
                                @"PROVINCE_ID"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"PROVINCE_ID"]],
                                @"GEO_ID"           : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"GEO_ID"]]
                                };
        [districts addObject:[[District alloc] initWithValue:value]];
    }
    return [NSArray arrayWithArray:districts];
}

- (Zipcode *)zipcodeForDistrict:(District *)district{
    NSString *query = [NSString stringWithFormat:@"select * from zipcodes where district_code=%@", district.DISTRICT_CODE];
    
    NSArray *results = [[NSArray alloc] initWithArray:[self loadDataFromDB:query]];
    
    if(results.count == 0) return nil;
    
    NSArray *row = [results objectAtIndex:0];
    
    NSDictionary *value = @{
                            @"id"           : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"id"]],
                            @"district_code": [row objectAtIndex:[self.arrColumnNames indexOfObject:@"district_code"]],
                            @"zipcode"      : [row objectAtIndex:[self.arrColumnNames indexOfObject:@"zipcode"]]
                            };
    
    return [[Zipcode alloc] initWithValue:value];
}

@end
