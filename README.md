# JXAlertViewTool
适配iOS7、iOS8的alert，使用简单。

    [JXAlertViewTool showAlertView:self title:@"your are so .." message:@"handsome" cancelButtonTitle:@"cancle otherButtonTitle:@"confirm" confirm:^{ 
        NSLog(@"confirm");
    } cancle:^{
        NSLog(@"cancle");
    }];
