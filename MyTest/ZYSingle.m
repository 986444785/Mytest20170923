//
//  ZYSingle.m
//  MyTest
//
//  Created by chenweibin on 2017/9/20.
//  Copyright © 2017年 chenweibin. All rights reserved.
//

#import "ZYSingle.h"

static ZYSingle * __single;

@implementation ZYSingle


+(ZYSingle*)shareSingle{
    @synchronized (self) {
        if (!__single) {
            __single = [[ZYSingle alloc]init];
        }
    }
    return __single;
}

+(id)alloc{
    
    static dispatch_once_t onceToken;
    if (!__single) {
        
    }


    dispatch_once(&onceToken, ^{
        __single = [super alloc];
    });
    
    return __single;
    
}



@end
