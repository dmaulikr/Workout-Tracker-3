//
//  2-A-Days_10+12_TVC.m
//  90 DWT 3
//
//  Created by Jared Grant on 1/12/14.
//  Copyright (c) 2014 Grant, Jared. All rights reserved.
//

#import "2-A-Days_10+12_TVC.h"

@interface __A_Days_10_12_TVC ()

@end

@implementation __A_Days_10_12_TVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Show or Hide Ads
    if ([[DWT3IAPHelper sharedInstance] productPurchased:@"com.grantsoftware.90DWT3.removeads1"]) {
        
        // User purchased the Remove Ads in-app purchase so don't show any ads.
        self.canDisplayBannerAds = NO;
        
    } else {
        
        // Show the Banner Ad
        self.canDisplayBannerAds = YES;
    }

    // Configure tableview.
    NSArray *tableCell = @[self.cell1,
                           self.cell2,
                           self.cell3,
                           self.cell4,
                           self.cell5,
                           self.cell6,
                           self.cell7,
                           self.cell8,
                           self.cell9,
                           self.cell10,
                           self.cell11,
                           self.cell12,
                           self.cell13];
    
    NSArray *accessoryIcon = @[@YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES,
                               @YES];
    
    NSArray *cellColor = @[@NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO,
                           @NO];
    
    [self configureTableView:tableCell :accessoryIcon: cellColor];
}

- (void)viewDidDisappear:(BOOL)animated {
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 7;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section == 0) {
        
        return 2;
    }
    
    else if (section == 1) {
        
        return 2;
    }
    
    else if (section == 2) {
        
        return 2;
    }
    
    else if (section == 3) {
        
        return 2;
    }
    
    else if (section == 4) {
        
        return 2;
    }
    
    else if (section == 5) {
        
        return 2;
    }
    
    else {
        return 1;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedRoutine = ((DataNavController *)self.parentViewController).routine;
    NSString *week = ((DataNavController *)self.parentViewController).week;
    NSArray *workoutArray;
    
    workoutArray = @[@"Plyometrics D",
                     @"Cardio Speed",
                     @"Cardio Resistance",
                     @"Pilates",
                     @"Negative Upper",
                     @"MMA",
                     @"Plyometrics T",
                     @"Core I",
                     @"Yoga",
                     @"Cardio Resistance",
                     @"Negative Lower",
                     @"Core D",
                     @"Core D"];
    
    // Normal routine
    if ([selectedRoutine isEqualToString:@"2-A-Days"]) {
        
        // Week 10
        if ([week isEqualToString:@"Week 10"]) {
            
            if (indexPath.section == 0) {
                
                if (indexPath.row == 0) {
                    
                    // Plyometrics D 2
                    ((DataNavController *)self.parentViewController).index = @2;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[0];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Cardio Speed 7
                    ((DataNavController *)self.parentViewController).index = @7;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[1];
                }
            }
            
            if (indexPath.section == 1) {
                
                if (indexPath.row == 0) {
                    
                    // Cardio Resistance 7
                    ((DataNavController *)self.parentViewController).index = @7;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[2];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Pilates 4
                    ((DataNavController *)self.parentViewController).index = @4;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[3];
                }
            }
            
            if (indexPath.section == 2) {
                
                if (indexPath.row == 0) {
                    
                    // Negative Upper 1
                    ((DataNavController *)self.parentViewController).index = @1;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[4];
                }
                
                else if (indexPath.row == 1) {
                    
                    // MMA 5
                    ((DataNavController *)self.parentViewController).index = @5;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[5];
                }
            }
            
            if (indexPath.section == 3) {
                
                if (indexPath.row == 0) {
                    
                    // Plyometrics T 5
                    ((DataNavController *)self.parentViewController).index = @5;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[6];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Core I 7
                    ((DataNavController *)self.parentViewController).index = @7;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[7];
                }
            }
            
            if (indexPath.section == 4) {
                
                if (indexPath.row == 0) {
                    
                    // Yoga 10
                    ((DataNavController *)self.parentViewController).index = @10;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[8];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Cardio Resistance 8
                    ((DataNavController *)self.parentViewController).index = @8;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[9];
                }
            }
            
            if (indexPath.section == 5) {
                
                if (indexPath.row == 0) {
                    
                    // Negative Lower 4
                    ((DataNavController *)self.parentViewController).index = @4;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[10];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Core D 27
                    ((DataNavController *)self.parentViewController).index = @27;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[11];
                }
            }
            
            if (indexPath.section == 6) {
                
                if (indexPath.row == 0) {
                    
                    // Core D 28
                    ((DataNavController *)self.parentViewController).index = @28;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[12];
                }
            }
        }
        
        // Week 12
        else if ([week isEqualToString:@"Week 12"]) {
            
            if (indexPath.section == 0) {
                
                if (indexPath.row == 0) {
                    
                    // Plyometrics D 4
                    ((DataNavController *)self.parentViewController).index = @4;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[0];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Cardio Speed 9
                    ((DataNavController *)self.parentViewController).index = @9;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[1];
                }
            }
            
            if (indexPath.section == 1) {
                
                if (indexPath.row == 0) {
                    
                    // Cardio Resistance 9
                    ((DataNavController *)self.parentViewController).index = @9;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[2];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Pilates 6
                    ((DataNavController *)self.parentViewController).index = @6;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[3];
                }
            }
            
            if (indexPath.section == 2) {
                
                if (indexPath.row == 0) {
                    
                    // Negative Upper 2
                    ((DataNavController *)self.parentViewController).index = @2;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[4];
                }
                
                else if (indexPath.row == 1) {
                    
                    // MMA 7
                    ((DataNavController *)self.parentViewController).index = @7;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[5];
                }
            }
            
            if (indexPath.section == 3) {
                
                if (indexPath.row == 0) {
                    
                    // Plyometrics T 7
                    ((DataNavController *)self.parentViewController).index = @7;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[6];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Core I 9
                    ((DataNavController *)self.parentViewController).index = @9;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[7];
                }
            }
            
            if (indexPath.section == 4) {
                
                if (indexPath.row == 0) {
                    
                    // Yoga 12
                    ((DataNavController *)self.parentViewController).index = @12;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[8];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Cardio Resistance 10
                    ((DataNavController *)self.parentViewController).index = @10;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[9];
                }
            }
            
            if (indexPath.section == 5) {
                
                if (indexPath.row == 0) {
                    
                    // Negative Lower 5
                    ((DataNavController *)self.parentViewController).index = @5;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[10];
                }
                
                else if (indexPath.row == 1) {
                    
                    // Core D 32
                    ((DataNavController *)self.parentViewController).index = @32;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[11];
                }
            }
            
            if (indexPath.section == 6) {
                
                if (indexPath.row == 0) {
                    
                    // Core D 33
                    ((DataNavController *)self.parentViewController).index = @33;
                    ((DataNavController *)self.parentViewController).workout = workoutArray[12];
                }
            }
        }
    }
    
    //NSLog(@"%@ index = %@", ((DataNavController *)self.parentViewController).workout, ((DataNavController *)self.parentViewController).index);
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section ==0) {
        
        NSString *routineWeek = [((DataNavController *)self.parentViewController).routine stringByAppendingFormat:@" - %@", ((DataNavController *)self.parentViewController).week];
        return routineWeek;
    }
    
    else {
        
        return @"";
    }
}
@end
