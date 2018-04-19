//
//  NSObject+Swizzling.m
//  TPLeakFinder
//
//  Created by 唐鹏 on 2018/3/28.
//  Copyright © 2018年 ICX. All rights reserved.
//

#import "NSObject+Swizzling.h"
#import <objc/message.h>
@implementation NSObject (Swizzling)
+ (void)swizzleSEL:(SEL)originalSEL withSEL:(SEL)swizzledSEL
{
    Class class = [self class];
    
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSEL);
    
    BOOL didAddMethod =
    class_addMethod(class,
                    originalSEL,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        class_replaceMethod(class,
                            swizzledSEL,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    }
    else
    {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
