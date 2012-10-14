//
//  GRTMasterViewController.h
//  Master-Detail
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GRTNote.h"
#import "GRTAppDelegate.h"

@class GRTDetailViewController;

@interface GRTMasterViewController : UITableViewController <CLLocationManagerDelegate>

@property (strong, nonatomic) GRTDetailViewController *detailViewController;

@end
