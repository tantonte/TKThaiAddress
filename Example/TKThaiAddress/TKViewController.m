//
//  TKViewController.m
//  TKThaiAddress
//
//  Created by tantonte on 05/24/2017.
//  Copyright (c) 2017 tantonte. All rights reserved.
//

#import "TKViewController.h"

typedef enum : NSUInteger {
    InputTypeGeography = 0,
    InputTypeProvince  = 1,
    InputTypeAmphure   = 2,
    InputTypeDistrict  = 3,
    InputTypeZipcode   = 4
} InputType;

@interface TKViewController () //<UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
//{
//    Geography *geography;
//    Province *province;
//    Amphure *amphure;
//    District *district;
//    Zipcode *zipcode;
//}

@property (weak, nonatomic) IBOutlet UITextField *geographyTextField;
@property (weak, nonatomic) IBOutlet UITextField *provinceTextField;
@property (weak, nonatomic) IBOutlet UITextField *amphureTextField;
@property (weak, nonatomic) IBOutlet UITextField *districtTextField;
@property (weak, nonatomic) IBOutlet UITextField *zipcodeTextField;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

//@property (strong, nonatomic) NSArray<SQLiteDataModel *> *components;
//@property (strong, nonatomic) TKDatabaseManager *dbManager;
@property (nonatomic) InputType currentSelection;

@end

@implementation TKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    
//    self.dbManager = [TKDatabaseManager databaseForThailandAddresses];
//    
//    [self.pickerView setDataSource:self];
//    [self.pickerView setDelegate:self];
//    
//    [self.geographyTextField setDelegate:self];
//    [self.provinceTextField  setDelegate:self];
//    [self.amphureTextField   setDelegate:self];
//    [self.districtTextField  setDelegate:self];
//    [self.zipcodeTextField   setDelegate:self];
//    
//    //    BOOL enabled = NO;
//    //    [self.geographyTextField setUserInteractionEnabled:enabled];
//    //    [self.provinceTextField  setUserInteractionEnabled:enabled];
//    //    [self.amphureTextField   setUserInteractionEnabled:enabled];
//    //    [self.districtTextField  setUserInteractionEnabled:enabled];
//    //    [self.zipcodeTextField   setUserInteractionEnabled:enabled];
//    
//    self.currentSelection = 0;
//    [self refreshComponents];
//}
//
//- (void)updateTextFields{
//    [self.geographyTextField setText:geography ? [geography title] : @""];
//    [self.provinceTextField  setText:province  ? [province  title] : @""];
//    [self.amphureTextField   setText:amphure   ? [amphure   title] : @""];
//    [self.districtTextField  setText:district  ? [district  title] : @""];
//    [self.zipcodeTextField   setText:zipcode   ? [zipcode   title] : @""];
//}
//
//- (void)refreshComponents{
//    self.components = [[NSArray alloc] init];
//    switch (self.currentSelection) {
//        case InputTypeGeography:
//            self.components = [self.dbManager allGeographies];
//            break;
//        case InputTypeProvince:
//            self.components = [self.dbManager provincesInGeography:geography];
//            break;
//        case InputTypeAmphure:
//            self.components = [self.dbManager amphuresInProvince:province];
//            break;
//        case InputTypeDistrict:
//            self.components = [self.dbManager districtsInAmphure:amphure];
//            break;
//            
//        default:
//            break;
//    }
//    if(self.components.count == 0){
//        if(self.currentSelection < 3) self.currentSelection++; else self.currentSelection = 0;
//        [self refreshComponents];
//    }
//    [self.pickerView reloadAllComponents];
//}
//
//- (IBAction)select:(id)sender {
//    switch (self.currentSelection) {
//        case InputTypeGeography:
//            if(geography){
//                province = nil;
//                amphure = nil;
//                district = nil;
//                zipcode = nil;
//                [self.provinceTextField  setText:@""];
//                [self.amphureTextField   setText:@""];
//                [self.districtTextField  setText:@""];
//                [self.zipcodeTextField   setText:@""];
//            }
//            geography = (Geography *)[self.components objectAtIndex:[self.pickerView selectedRowInComponent:0]];
//            break;
//        case InputTypeProvince:
//            if(province){
//                amphure = nil;
//                district = nil;
//                zipcode = nil;
//                [self.amphureTextField   setText:@""];
//                [self.districtTextField  setText:@""];
//                [self.zipcodeTextField   setText:@""];
//            }
//            province = (Province *)[self.components objectAtIndex:[self.pickerView selectedRowInComponent:0]];
//            break;
//        case InputTypeAmphure:
//            if(amphure){
//                district = nil;
//                zipcode = nil;
//                [self.districtTextField  setText:@""];
//                [self.zipcodeTextField   setText:@""];
//            }
//            amphure = (Amphure *)[self.components objectAtIndex:[self.pickerView selectedRowInComponent:0]];
//            break;
//        case InputTypeDistrict:
//            district = (District *)[self.components objectAtIndex:[self.pickerView selectedRowInComponent:0]];
//            zipcode = [self.dbManager zipcodeForDistrict:district];
//            break;
//            
//        default:
//            break;
//    }
//    [self updateTextFields];
//    if(self.currentSelection < 3) self.currentSelection++; else self.currentSelection = 0;
//    [self refreshComponents];
//}
//
//- (IBAction)clear:(id)sender {
//    geography = nil;
//    province = nil;
//    amphure = nil;
//    district = nil;
//    zipcode = nil;
//    
//    [self updateTextFields];
//    
//    self.currentSelection = 0;
//    [self refreshComponents];
//}
//
//#pragma mark - UITextFieldDelegate methods
//
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
//    return NO;
//}
//
//#pragma mark - UIPickerViewDataSource methods
//
//- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{ return 1; }
//
//- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{ return self.components.count; }
//
//#pragma mark - UIPickerViewDelegate methods
//
//- (NSString *)pickerView:(UIPickerView *)pickerView
//             titleForRow:(NSInteger)row
//            forComponent:(NSInteger)component{
//    return [[self.components objectAtIndex:row] title];
//}

@end
