//
//  FBDrawARCView.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/3.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBDrawARCView.h"

@implementation FBDrawARCView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self thirdBeziePathDraw];
    
}
#pragma mark 画弧
-(void)drawARC{

    CGPoint center=CGPointMake(self.frame.size.width/2., self.frame.size.height/2.);
    /*
     画弧参数startAngle和endAngle使用的是弧度，而不是角度，因此我们需要将常用的角度转换成弧度。对于效果图中，我们设置弧的中心为控件的中心，起点弧度为0，也就是正东方向，而终点是135度角的位置。如果设置的clockwise:YES是圆的下半部分［顺时针］，如果设置为NO为上半部分［逆时针］。
     */
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:0 endAngle:[self degressToRadians:198] clockwise:NO];
    path.lineWidth=8.;
    path.lineCapStyle=kCGLineCapSquare;
    path.lineJoinStyle=kCGLineJoinBevel;
    
    UIColor *sColor=[UIColor redColor];
    [sColor set];
    
    [path stroke];
    
}
#pragma mark 将角度转化成弧度
-(double)degressToRadians:(CGFloat)degress
{
    return M_PI*degress/180;
    
    
}

#pragma mark 画二次贝塞尔曲线
-(void)secondBeziePathDraw
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    //起点[左侧]
    [path moveToPoint:CGPointMake(20, self.frame.size.height-100)];
    //二次曲线
    [path addQuadCurveToPoint:CGPointMake(self.frame.size.width-30, self.frame.size.height-100) controlPoint:CGPointMake(self.frame.size.width/2,self.frame.size.height-10)];
    path.lineWidth=8;
    
    UIColor *sColor=[UIColor redColor];
    [sColor set];
    [path stroke];
    
    
}
#pragma mark 三次贝塞尔曲线
-(void)thirdBeziePathDraw
{
    UIBezierPath *pah=[UIBezierPath bezierPath];
    
    //起点
    [pah moveToPoint:CGPointMake(20, 150)];
    //画线
    [pah addCurveToPoint:CGPointMake(300, 150) controlPoint1:CGPointMake(160, 0) controlPoint2:CGPointMake(160, 250)];
    
    pah.lineWidth=8;
    UIColor *scolor=[UIColor redColor];
    [scolor set];
    [pah stroke];
    
    
}



@end
