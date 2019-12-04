//
//  TMVWeakProxy.m
//  TreeMapView
//
//  Created by RbBtSn0w on 12/4/19.
//

#import "TMVWeakProxy.h"

@implementation TMVWeakProxy

+ (instancetype)proxyWithTarget:(id)weakTarget {
    return [[self alloc] initWithTarget:weakTarget];
}

- (instancetype)initWithTarget:(id)weakTarget {
    self.weakTarget = weakTarget;
    return self;
}

- (void)forwardInvocation:(NSInvocation *)invocation{
    SEL sel = [invocation selector];
    if ([self.weakTarget respondsToSelector:sel]) {
        [invocation invokeWithTarget:self.weakTarget];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    return [self.weakTarget methodSignatureForSelector:aSelector];
}

- (BOOL)respondsToSelector:(SEL)aSelector{
    return [self.weakTarget respondsToSelector:aSelector];
}


@end
