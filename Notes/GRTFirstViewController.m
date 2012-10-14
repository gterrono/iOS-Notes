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
- (void)setDefaultCenter;
@end

@implementation GRTFirstViewController

- (void)viewDidLoad
{
    [self setDefaultCenter];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [self setDefaultCenter];
    
    [_map removeAnnotations:_map.annotations];
    NSMutableArray *notes = ((GRTAppDelegate *)[[UIApplication sharedApplication] delegate]).notes;
    for (int i=0; i<notes.count; i++) {
        GRTNote *note = (GRTNote *)notes[i];
        if (note.location != nil) {
            [_map setCenterCoordinate:note.location.coordinate];
            MKPointAnnotation* annot = [[MKPointAnnotation alloc] init];
            annot.coordinate = note.location.coordinate;
            annot.title = note.title;
            [self.map addAnnotation:annot];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setDefaultCenter {
    CLLocationCoordinate2D location;
    location.latitude = 37.3323;
    location.longitude = -122.0312;
    [_map setCenterCoordinate:location];
}

@end
