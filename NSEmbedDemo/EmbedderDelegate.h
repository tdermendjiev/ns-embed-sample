//
//  EmbedderDelegate.h
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

#import <Foundation/Foundation.h>
#import <NativeScriptEmbedding/NativeScriptEmbedder.h>

extern char startOfMetadataSection __asm("section$start$__DATA$__TNSMetadata");

NS_ASSUME_NONNULL_BEGIN

@interface EmbedderDelegate : NSObject <NativeScriptEmbedderDelegate>

@property (nonatomic, strong) UIViewController* vc;
@property (nonatomic) void* metadataPtr;

@end

NS_ASSUME_NONNULL_END
