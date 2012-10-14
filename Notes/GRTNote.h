//
//  GRTNote.h
//  Notes
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface GRTNote : NSObject

@property (retain) NSString* title;
@property (retain) NSString* content;
@property (retain) CLLocation* location;
@property (retain) NSDate* createdAt;

- (NSString*)description;

+ (id)newNoteWithLocation:(CLLocation*)location;

@end
