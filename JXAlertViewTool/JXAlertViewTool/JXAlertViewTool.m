//
//  JXAlertViewTool.m
//  JXAlertViewTool
//
//  Created by 张明辉 on 16/3/16.
//  Copyright © 2016年 jesse. All rights reserved.
//

#import "JXAlertViewTool.h"
#import <UIKit/UIKit.h>
typedef void (^confirm)();
typedef void (^cancle)();

confirm confirmParam;
cancle cancleParam;

@interface JXAlertViewTool()<UIAlertViewDelegate>

@end

@implementation JXAlertViewTool
+(void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle confirm:(void (^)())confirm cancle:(void (^)())cancle
{
    confirmParam = confirm;
    cancleParam = cancle;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        // Create the actions.
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            if (cancle) {
                cancle();
            }
        }];
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (confirm) {
                confirm();
            }
        }];
        // Add the actions.
        [alertController addAction:cancelAction];
        [alertController addAction:otherAction];
        [viewController presentViewController:alertController animated:YES completion:nil];
    }else{
        
        UIAlertView *titleAlert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitle,nil];
        [titleAlert show];
    }
}

+(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0) {
        if (cancleParam) {
            cancleParam();
        }
    } else {
        if (confirmParam) {
            confirmParam();
        }
    }
}
@end