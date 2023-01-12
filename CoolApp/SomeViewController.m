//
//  SomeViewController.m
//  CoolApp
//
//  Created by Teodor Dermendzhiev on 12.01.23.
//

#import "SomeViewController.h"
#import <NativeScript/NativeScript.h>

extern char startOfMetadataSection __asm("section$start$__DATA$__TNSMetadata");
NativeScript* nativescript;

@interface SomeViewController ()

@end

@implementation SomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    void* metadataPtr = &startOfMetadataSection;

    bool isDebug =
#ifdef DEBUG
        true;
#else
        false;
#endif
    NSString* baseDir = [[NSBundle mainBundle] resourcePath];
    Config* config = [[Config alloc] init];
    config.LogToSystemConsole = YES;
//    config.MetadataPtr = metadataPtr;
    config.BaseDir = baseDir;

    nativescript = [[NativeScript alloc] initWithConfig:config];
    [nativescript runMainApplication];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
