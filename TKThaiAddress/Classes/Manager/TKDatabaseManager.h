//
//  TKDatabaseManager.h
//  Pods
//
//  Created by Thanyapat Kosiumnuay on 5/24/2560 BE.
//
//

#import "DatabaseManager.h"

#import "Geography.h"
#import "Province.h"
#import "Amphure.h"
#import "District.h"
#import "Zipcode.h"

@interface TKDatabaseManager : DatabaseManager

+ (TKDatabaseManager *)databaseForThailandAddresses;

- (NSArray<Geography *> *)allGeographies;

- (NSArray<Province *> *)allProvinces;

- (NSArray<Province *> *)provincesInGeography:(Geography *)geography;

- (NSArray<Amphure *> *)amphuresInProvince:(Province *)province;

- (NSArray<District *> *)districtsInAmphure:(Amphure *)amphure;

- (Zipcode *)zipcodeForDistrict:(District *)district;


@end
