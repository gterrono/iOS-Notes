//
//  GRTMasterViewController.h
//  Master-Detail
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GRTDetailViewController;

@interface GRTMasterViewController : UITableViewController

@property (strong, nonatomic) GRTDetailViewController *detailViewController;

@end
