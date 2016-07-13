//
//  SecondVC.m
//  CustomBridge
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

#import "SecondVC.h"
#import "CustomBridge-Swift.h"
@interface SecondVC ()<ThirdProtocolProtocol>

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonActionClicked:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(printMyLogIn)]) {
        [self.delegate printMyLogIn];
    }
}
//跳转按钮
- (IBAction)switchButtonClicked:(id)sender {
    ThirdVC *thirdVC = [[ThirdVC alloc] initWithNibName:@"ThirdVC" bundle:nil];
    thirdVC.myType = 1;
    thirdVC.myProtocol = self;
    [self presentViewController:thirdVC animated:YES completion:nil];
}
- (NSInteger)printTestLog
{
    
    return 10;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
