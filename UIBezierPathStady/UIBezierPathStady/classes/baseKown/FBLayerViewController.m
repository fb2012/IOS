//
//  FBLayerViewController.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/3.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBLayerViewController.h"
#import "FBCAShapeLayerView.h"

@interface FBLayerViewController ()

@end

@implementation FBLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test];
    
    // Do any additional setup after loading the view.
}
#pragma mark
-(void)test
{
    FBCAShapeLayerView *layer=[[FBCAShapeLayerView alloc]initWithFrame:CGRectMake(0, 70, self.view.frame.size.width, self.view.frame.size.height-100)];
    layer.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:layer];
    // 画圆
    //[layer drawCircle];
    //曲线
    [layer secondBeziePathLineWidthDrawAnimation];
    
    
    
    
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
