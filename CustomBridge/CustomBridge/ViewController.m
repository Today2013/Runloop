//
//  ViewController.m
//  CustomBridge
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

#import "ViewController.h"
#import "CustomBridge-Swift.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)testButtonClicked:(id)sender {
    FirstVC *firstVC = [[FirstVC alloc] initWithNibName:@"FirstVC" bundle:nil];
    [self presentViewController:firstVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
