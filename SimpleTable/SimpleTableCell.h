//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Aruna Withanage on 16/8/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, strong) NSMutableArray *imageArray;

- (void)setUpImages:(UITableViewCell*)cell;

@end
