//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "objc-runtime.h"

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [[Person alloc] init];
        [person say];
        [NSObject performSelector:@selector(haha) withObject:person afterDelay:0];
        NSLog(@"isa: %@", objc_getMetaClass(person.className.UTF8String));
        
    }
    return 0;
}
