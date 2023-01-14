//
//  EmbedderDelegate.m
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

#import "EmbedderDelegate.h"

@implementation EmbedderDelegate

- (id)presentNativeScriptApp:(UIViewController *)vc {
    [self.vc addChildViewController:vc];
    [self.vc.view setFrame:self.vc.view.bounds];
    [self.vc.view addSubview:vc.view];
    [self.vc didMoveToParentViewController:self.vc];
    return 0;
}

@end
