//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by Aruna Withanage on 16/8/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    IBOutlet UITableView *table;
}

@end
