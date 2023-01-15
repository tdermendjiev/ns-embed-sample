//
//  EmbedderDelegate.m
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

#import "EmbedderDelegate.h"

@implementation EmbedderDelegate

-(id)init {
    if ( self = [super init] ) {
        self.metadataPtr = &startOfMetadataSection;
    }
    return self;
}

- (id)presentNativeScriptApp:(UIViewController *)vc {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.vc presentViewController:vc animated:YES completion: NULL];

    });
    return 0;
}

@end
