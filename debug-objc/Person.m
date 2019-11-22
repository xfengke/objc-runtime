//
//  Person.m
//  debug-objc
//
//  Created by xfeng on 2019/11/15.
//

#import "Person.h"
#import "objc-runtime.h"

@implementation Person

+ (void)load {
    NSLog(@"fffff");
}

+ (void)initialize
{
    if (self == [Person class]) {
        NSLog(@"Person initialize");
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

//- (void)say {
//    NSLog(@"hello");
//}
// 一级转发
+ (BOOL)resolveClassMethod:(SEL)sel {
    NSLog(@"%@", sel);
    return YES;
}
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSLog(@"%@", sel);
    return YES;
}

// 二级转发
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
//    NSInvocation *invocation = NSInv
    NSMethodSignature *methodSignature = [NSMethodSignature methodSignatureForSelector:aSelector];
    if (methodSignature) {
        return methodSignature;
    }
    return nil;
}


@end
