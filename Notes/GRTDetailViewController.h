//
//  GRTDetailViewController.h
//  Master-Detail
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRTDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
