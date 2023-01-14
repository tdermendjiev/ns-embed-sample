//
//  EmbedderDelegate.h
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

#import <Foundation/Foundation.h>
#import <NativeScriptEmbedding/NativeScriptEmbedder.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmbedderDelegate : NSObject <NativeScriptEmbedderDelegate>

@property (nonatomic, strong) UIViewController* vc;

@end

NS_ASSUME_NONNULL_END
