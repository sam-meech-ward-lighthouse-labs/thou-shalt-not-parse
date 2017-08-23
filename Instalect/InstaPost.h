//
//  InstaPost.h
//  Instalect
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Parse/Parse.h>

typedef NS_ENUM(NSUInteger, InstaPostType) {
    InstaPostTypeRegular,
    InstaPostTypeFiltered,
    InstaPostTypeSepia,
};

@interface InstaPost : PFObject <PFSubclassing>

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *postDescription;

@property (nonatomic, assign) InstaPostType type;
    
    
@end
