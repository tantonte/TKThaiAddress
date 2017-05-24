//
//  DBManager.h
//  TKThaiAddress
//
//  Created by Thanyapat Kosiumnuay on 5/23/2560 BE.
//  Copyright © 2560 Thanyapat Kosiumnuay All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DatabaseManager : NSObject

@property (nonatomic, strong) NSMutableArray *arrColumnNames;

@property (nonatomic) int affectedRows;

@property (nonatomic) long long lastInsertedRowID;

- (instancetype)initWithDatabaseFilename:(NSString *)dbFilename;

- (NSArray *)loadDataFromDB:(NSString *)query;

- (void)executeQuery:(NSString *)query;

@end
