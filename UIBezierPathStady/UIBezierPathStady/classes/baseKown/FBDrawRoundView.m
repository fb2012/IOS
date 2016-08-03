//
//  FBDrawRoundView.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/2.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBDrawRoundView.h"

@implementation FBDrawRoundView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawRoundMoreRectPath];
    
    
}
#pragma mark 带圆角的矩形
-(void)drawRoundRectPath{

    UIBezierPath *path=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width-30, self.frame.size.height-40) cornerRadius:10];
    path.lineWidth=2;
    //  填充颜色
    UIColor *fillColor=[UIColor greenColor];
    [fillColor set];
    [path fill];
    // 画笔颜色
    UIColor *sColor=[UIColor blueColor];
    [sColor set];
    [path stroke];
    
    
}
#pragma mark 定点个边是圆角的矩形
-(void)drawRoundMoreRectPath{
    
    /**
     typedef NS_OPTIONS(NSUInteger, UIRectCorner) {
     UIRectCornerTopLeft     = 1 << 0,
     UIRectCornerTopRight    = 1 << 1,
     UIRectCornerBottomLeft  = 1 << 2,
     UIRectCornerBottomRight = 1 << 3,
     UIRectCornerAllCorners  = ~0UL
     };

     */
    UIBezierPath *path=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width-30, self.frame.size.height-40) byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];
    path.lineWidth=2;
    //  填充颜色
    UIColor *fillColor=[UIColor greenColor];
    [fillColor set];
    [path fill];
    // 画笔颜色
    UIColor *sColor=[UIColor blueColor];
    [sColor set];
    [path stroke];

    
}




@end
