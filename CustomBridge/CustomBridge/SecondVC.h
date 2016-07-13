//
//  SecondVC.h
//  CustomBridge
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondVCDelegate <NSObject>

- (void)printMyLogIn;

@end
@interface SecondVC : UIViewController
@property(nonatomic, assign)id<SecondVCDelegate>delegate;
@end
