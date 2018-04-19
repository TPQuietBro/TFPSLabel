//
//  NSObject+Swizzling.h
//  TPLeakFinder
//
//  Created by 唐鹏 on 2018/3/28.
//  Copyright © 2018年 ICX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)
+ (void)swizzleSEL:(SEL)originalSEL withSEL:(SEL)swizzledSEL;
@end
