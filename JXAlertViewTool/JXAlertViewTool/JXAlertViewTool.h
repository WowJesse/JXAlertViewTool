//
//  JXAlertViewTool.h
//  JXAlertViewTool
//
//  Created by 张明辉 on 16/3/16.
//  Copyright © 2016年 jesse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface JXAlertViewTool : NSObject
+(void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle confirm:(void (^)())confirm cancle:(void (^)())cancle;
@end
