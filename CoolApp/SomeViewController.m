//
//  SomeViewController.m
//  CoolApp
//
//  Created by Teodor Dermendzhiev on 12.01.23.
//

#import "SomeViewController.h"
#import <NativeScript/NativeScript.h>

NativeScript* nativescript;

@interface SomeViewController ()

@end

@implementation SomeViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NativeScriptEmbedder sharedInstance] setDelegate:self];
   
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    NSString* baseDir = [[NSBundle mainBundle] resourcePath];
    Config* config = [[Config alloc] init];
    config.LogToSystemConsole = YES;
    config.IsDebug = YES;
    config.BaseDir = baseDir;

    nativescript = [[NativeScript alloc] initWithConfig:config];
    [nativescript runMainApplication];
}

- (id)presentNativeScriptApp:(UIViewController *)vc {
    [self addChildViewController:vc];
    [vc.view setFrame:self.view.bounds];
    [self.view addSubview:vc.view];
    [vc didMoveToParentViewController:self];
    return 0;
}


@end
