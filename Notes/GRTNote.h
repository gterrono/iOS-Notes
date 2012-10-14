//
//  GRTNote.h
//  Notes
//
//  Created by Gregory Terrono on 10/13/12.
//  Copyright (c) 2012 Gregory Terrono. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GRTNote : NSObject {
    NSString* title;
    NSString* content;
}
@property (retain) NSString* title;
@property (retain) NSString* content;

- (NSString*)description;

+ (id)newNote;

@end
