//
//  UIView+StringTag.m
//  RunTime
//
//  Created by Alex on 16/2/16.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "UIView+StringTag.h"
#import <objc/runtime.h>

const char *stringTagKey;

@implementation UIView (StringTag)

- (void)setStringTag:(NSString *)stringTag
{
    objc_setAssociatedObject(self, stringTagKey, stringTag, OBJC_ASSOCIATION_COPY);
}

- (NSString *)stringTag
{
    return objc_getAssociatedObject(self, stringTagKey);
}

/*
- (void)setStringTag:(NSString *)stringTag {
    objc_setAssociatedObject(self, @selector(stringTag), stringTag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)stringTag {
    return objc_getAssociatedObject(self, @selector(stringTag));
}
*/

@end
