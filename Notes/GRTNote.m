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

- (id) initWithTitle:(NSString*)t content:(NSString*)c {
    if (self = [super init]) {
        self.title = t;
        self.content = c;
    }
    return self;
}

- (NSString *) description {
    return title;
}

+ (id) newNote {
    return [[self alloc] initWithTitle:@"New Note" content:@""];
}

@end
