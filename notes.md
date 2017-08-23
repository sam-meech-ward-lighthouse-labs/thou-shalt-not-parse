# Parse

## Connect the app to the server

* Import parse into the app delegate
* Connect the app to your parse server in the cloud

```objective-c
ParseClientConfiguration *configuration = [ParseClientConfiguration configurationWithBlock:^(id<ParseMutableClientConfiguration>  _Nonnull configuration) {
    configuration.applicationId = @"myAppId";
    configuration.server = @"https://instalect.herokuapp.com/parse";
    
}];
    
[Parse initializeWithConfiguration:configuration];
```

## PFObject

* These are the objects that can be persisted to Parse. 
* Kind of like `NSMANAGEDObjectes` in Core Data

### Subclass your PFObjects

SUBCLASSING PFOBJECT

To create a PFObject subclass:

1. Declare a subclass which conforms to the PFSubclassing protocol.
2. Implement the class method parseClassName. This is the string you would pass to initWithClassName: and makes all future class name references unnecessary.
3. Import PFObject+Subclass in your .m file. This implements all methods in PFSubclassing beyond parseClassName.
4. Call `[YourClass registerSubclass]` before Parse setApplicationId:clientKey:

```objective-c
#import "InstaPost.h"
#import <Parse/PFObject+Subclass.h>

@implementation InstaPost

+ (void)load {
    [self registerSubclass];
}
    
+ (NSString *)parseClassName {
    return @"InstaPost";
}
    
@end
```

"Linh just said cunt" 💩

