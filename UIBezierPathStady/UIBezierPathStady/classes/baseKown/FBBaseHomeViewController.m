//
//  FBBaseHomeViewController.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/2.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBBaseHomeViewController.h"
#import "FBDrawView.h"
#import "FBDrawRoundView.h"
#import "FBDrawARCView.h"

@interface FBBaseHomeViewController ()

@end

@implementation FBBaseHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self baseDrawView];
    
    // Do any additional setup after loading the view.
}
#pragma mark 基本图形
-(void)baseDrawView
{
    FBDrawView *draw=[[FBDrawView alloc]initWithFrame:CGRectMake(35, 70, self.view.frame.size.width-70, self.view.frame.size.height/2.)];
    [self.view addSubview:draw];
}
#pragma mark 圆角 图形
-(void)roundDrawView
{
    //
    FBDrawRoundView *draw=[[FBDrawRoundView alloc]initWithFrame:CGRectMake(35, 70, self.view.frame.size.width-70, self.view.frame.size.height/2.)];
    [self.view addSubview:draw];
}
#pragma mark 换弧
-(void)ARCDrawView
{
    FBDrawARCView *draw=[[FBDrawARCView alloc]initWithFrame:CGRectMake(35, 70, self.view.frame.size.width-70, self.view.frame.size.height/2.)];
    [self.view addSubview:draw];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
