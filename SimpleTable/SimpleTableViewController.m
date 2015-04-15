//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Aruna Withanage on 16/8/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"

@interface SimpleTableViewController ()
{
    NSMutableArray *arr1;
    NSMutableArray *arr2;
    NSMutableArray *arr3;
    NSMutableArray *arr4;
    NSMutableArray *arr5;
}

@end

@implementation SimpleTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Initialize table data
    arr1 = [[NSMutableArray alloc] init];
    arr2 = [[NSMutableArray alloc] init];
    arr3 = [[NSMutableArray alloc] init];
    arr4 = [[NSMutableArray alloc] init];
    arr5 = [[NSMutableArray alloc] init];
    
    [arr1 addObject:[UIImageView new]];
    
    [arr2 addObject:[UIImageView new]];
    [arr2 addObject:[UIImageView new]];
    
    [arr3 addObject:[UIImageView new]];
    [arr3 addObject:[UIImageView new]];
    [arr3 addObject:[UIImageView new]];
    
    [arr4 addObject:[UIImageView new]];
    [arr4 addObject:[UIImageView new]];
    [arr4 addObject:[UIImageView new]];
    [arr4 addObject:[UIImageView new]];
    
    [arr5 addObject:[UIImageView new]];
    [arr5 addObject:[UIImageView new]];
    [arr5 addObject:[UIImageView new]];
    [arr5 addObject:[UIImageView new]];
    [arr5 addObject:[UIImageView new]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200.0f;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    SimpleTableCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[SimpleTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    switch (indexPath.row) {
        case 0:
            [cell setImageArray:arr1];
            break;
        case 1:
            [cell setImageArray:arr2];
            break;
        case 2:
            [cell setImageArray:arr3];
            break;
        case 3:
            [cell setImageArray:arr4];
            break;
        case 4:
            [cell setImageArray:arr5];
            break;
            
        default:
            [cell setImageArray:arr2];
            break;
    }
    [cell setUpImages:cell];
    
    return cell;
}

@end

