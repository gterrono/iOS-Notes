//
//  GRTFirstViewController.m
//  Notes
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import "GRTFirstViewController.h"

@interface GRTFirstViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation GRTFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *notes = ((GRTAppDelegate *)[[UIApplication sharedApplication] delegate]).notes;
    for (int i=0; i<notes.count; i++) {
        GRTNote *note = (GRTNote *)notes[i];
        [_map setCenterCoordinate:note.location.coordinate];
        MKPointAnnotation* annot = [[MKPointAnnotation alloc] init];
        [annot setCoordinate: note.location.coordinate];
        [annot setTitle:note.title];
        [self.map addAnnotation:annot];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
