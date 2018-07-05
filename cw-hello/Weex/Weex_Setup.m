//
//  Weex_Setup.m
//  cw-hello
//
//  Created by 曹良辰 on 2018/7/5.
//  Copyright © 2018年 曹良辰. All rights reserved.
//

#import "Weex_Setup.h"
#import <WeexSDK/WXSDKEngine.h>
#import "MainViewComponent.h"
#import "MainViewModule.h"
@implementation Weex_Setup

+ (void)setup{
    static dispatch_once_t onceToken;
    dispatch_once (&onceToken, ^{
        [self comPonentRegister];
        [self moduleRegister];
    });
}

+ (void)comPonentRegister{
    [WXSDKEngine registerComponent:@"MainViewComponent" withClass:[MainViewComponent class]];
}

+ (void)moduleRegister{
    [WXSDKEngine registerModule:@"MainViewModule" withClass:[MainViewModule class]];
}

@end
