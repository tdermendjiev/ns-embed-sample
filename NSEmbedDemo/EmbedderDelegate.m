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
        [self.vc addChildViewController:vc];
        [self.vc.view setFrame:self.vc.view.bounds];
        [self.vc.view addSubview:vc.view];
        [self.vc didMoveToParentViewController:self.vc];
    });
    return 0;
}

@end
