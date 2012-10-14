//
//  GRTNote.m
//  Notes
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import "GRTNote.h"

@implementation GRTNote

@synthesize title;
@synthesize content;

- (id) initWithTitle:(NSString*)t content:(NSString*)c location:(CLLocation*)l {
    if (self = [super init]) {
        self.title = t;
        self.content = c;
        self.createdAt = [NSDate date];
        self.location = l;
    }
    return self;
}

- (NSString *) description {
    return title;
}

+ (id) newNoteWithLocation:(CLLocation *)location {
    return [[self alloc] initWithTitle:@"New Note" content:@"Enter your note here." location:location];
}

@end
