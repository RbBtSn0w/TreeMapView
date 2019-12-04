//
//  TMVWeakProxy.h
//  TreeMapView
//
//  Created by RbBtSn0w on 12/4/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// It's set -fobjc-arc flag on xcode config.
@interface TMVWeakProxy <__covariant NSOBJECT : NSObject*>: NSProxy

@property (nonatomic, weak) NSOBJECT weakTarget;

+ (instancetype)proxyWithTarget:(NSOBJECT)weakTarget;

- (instancetype)initWithTarget:(NSOBJECT)weakTarget;

@end

NS_ASSUME_NONNULL_END
