//
//  GRTDetailViewController.m
//  Master-Detail
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import "GRTDetailViewController.h"

@interface GRTDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@property (weak, nonatomic) IBOutlet UITextView *contentField;
@property (weak, nonatomic) IBOutlet UILabel *locationField;
@property (weak, nonatomic) IBOutlet UILabel *timeField;
- (void)configureView;
@end

@implementation GRTDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        GRTNote *note = (GRTNote *)_detailItem;
        [_titleField setText:note.title];
        [_contentField setText:note.content];
        if (note.location != nil) {
            _locationField.text = [NSString stringWithFormat:@"(%+.4f, %+.4f)", note.location.coordinate.latitude, note.location.coordinate.longitude, nil];
        }
        _timeField.text = [note.createdAt description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewWillDisappear:(BOOL)animated {
    GRTNote *note = (GRTNote *)_detailItem;
    note.title = _titleField.text;
    note.content = _contentField.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
