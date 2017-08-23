//
//  InstaPost.m
//  Instalect
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "InstaPost.h"
#import <Parse/PFObject+Subclass.h>

@implementation InstaPost
    
@dynamic type, postDescription, title;

+ (void)load {
    [self registerSubclass];
}
    
+ (NSString *)parseClassName {
    return @"InstaPost";
}
    
@end
