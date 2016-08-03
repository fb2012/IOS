//
//  FBCAShapeLayerView.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/3.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBCAShapeLayerView.h"

@implementation FBCAShapeLayerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
}
 */
/**
 *  画圆进度条
 */
-(void)drawCircle
{
    CAShapeLayer *circleLayer=[CAShapeLayer layer];
    //设置位置
    circleLayer.lineWidth=2.0;
    circleLayer.fillColor=[UIColor whiteColor].CGColor;
    //线的颜色
    circleLayer.strokeColor=[UIColor redColor].CGColor;
    //路径
    UIBezierPath *path=[UIBezierPath bezierPath];//bezierPathWithOvalInRect:CGRectMake(self.frame.size.width/4, self.frame.size.height/2, 200, 200)];
    [path addArcWithCenter:CGPointMake(self.frame.size.width/2., self.frame.size.height/2.) radius:100 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
    
    circleLayer.path=path.CGPath;
    [self.layer addSublayer:circleLayer];
    
    circleLayer.strokeStart=0.0;
    circleLayer.strokeEnd=.9;
    
    CABasicAnimation *pathAnima=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnima.duration=3;
    pathAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    pathAnima.fromValue=[NSNumber numberWithFloat:0.];
    pathAnima.toValue=[NSNumber numberWithFloat:1.];
    pathAnima.fillMode=kCAFillModeForwards;
    pathAnima.removedOnCompletion=NO;
    [circleLayer addAnimation:pathAnima forKey:@"path"];
    

//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [UIView animateWithDuration:20 animations:^{
//            circleLayer.strokeEnd=1;
//        }];
//        
//    });
    
    
    
}

/**
 *  曲线动画
 */
-(void)secondBeziePathDrawAnimation
{
    //曲线
    UIBezierPath *path=[UIBezierPath bezierPath];
    //起点
    [path moveToPoint:CGPointMake(20, 20)];
    
    // 基本曲线
    //[path addQuadCurveToPoint:CGPointMake(self.frame.size.width-30, 20) controlPoint:CGPointMake(self.frame.size.width/2., self.frame.size.height/2.)];
    //二次曲线
    [path addCurveToPoint:CGPointMake(self.frame.size.width-30, 20) controlPoint1:CGPointMake(self.frame.size.width/4., 0) controlPoint2:CGPointMake(120., 120)];
    
    
    CAShapeLayer *sLayer=[CAShapeLayer layer];
    sLayer.fillColor=[UIColor clearColor].CGColor;
    
    //画笔颜色
    sLayer.strokeColor=[UIColor redColor].CGColor;
    //画笔宽度
    sLayer.lineWidth=2.f;
    //路径
    sLayer.path=path.CGPath;
    sLayer.strokeStart=0.;
    sLayer.strokeEnd=1.;
    [self.layer addSublayer:sLayer];

    //动画效果
    CABasicAnimation *slayerAnimat=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    slayerAnimat.duration=5;
    slayerAnimat.fromValue=[NSNumber numberWithFloat:0.];
    slayerAnimat.toValue=[NSNumber numberWithFloat:1.];
    
    slayerAnimat.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    slayerAnimat.fillMode=kCAFillModeForwards;
    slayerAnimat.removedOnCompletion=YES;
    [sLayer addAnimation:slayerAnimat forKey:@"path"];
    
    
    
    
}

/**
 *  二次曲线动画
 */
-(void)secondBeziePathDrawAnimation1
{
    //曲线
    UIBezierPath *path=[UIBezierPath bezierPath];
    //起点
    [path moveToPoint:CGPointMake(20, 20)];
    
  
    //二次曲线
    [path addCurveToPoint:CGPointMake(self.frame.size.width-30, 20) controlPoint1:CGPointMake(self.frame.size.width/4., 0) controlPoint2:CGPointMake(120., 120)];
    
    
    CAShapeLayer *sLayer=[CAShapeLayer layer];
    sLayer.fillColor=[UIColor clearColor].CGColor;
    
    //画笔颜色
    sLayer.strokeColor=[UIColor redColor].CGColor;
    //画笔宽度
    sLayer.lineWidth=2.f;
    //路径
    sLayer.path=path.CGPath;
    sLayer.strokeStart=0.5;
    sLayer.strokeEnd=.5;
    [self.layer addSublayer:sLayer];
    
    //动画效果
    CABasicAnimation *slayerAnimat=[CABasicAnimation animationWithKeyPath:@"strokeStart"];
    slayerAnimat.duration=5;
    slayerAnimat.fromValue=[NSNumber numberWithFloat:0.5];
    slayerAnimat.toValue=[NSNumber numberWithFloat:0.];
    
    slayerAnimat.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    slayerAnimat.fillMode=kCAFillModeForwards;
    slayerAnimat.removedOnCompletion=NO;
    [sLayer addAnimation:slayerAnimat forKey:@"path"];
    
//    //动画效果
    CABasicAnimation *slayerAnimat1=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    slayerAnimat1.duration=5;
    slayerAnimat1.fromValue=[NSNumber numberWithFloat:0.5];
    slayerAnimat1.toValue=[NSNumber numberWithFloat:1];
    
    slayerAnimat1.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    slayerAnimat1.fillMode=kCAFillModeForwards;
    slayerAnimat1.removedOnCompletion=NO;
    [sLayer addAnimation:slayerAnimat1 forKey:@"path1"];
    
}
/**
 *  二次曲线线逐渐变粗动画
 */
-(void)secondBeziePathLineWidthDrawAnimation
{
    //曲线
    UIBezierPath *path=[UIBezierPath bezierPath];
    //起点
    [path moveToPoint:CGPointMake(20, 20)];
    
    
    //二次曲线
    [path addCurveToPoint:CGPointMake(self.frame.size.width-30, 20) controlPoint1:CGPointMake(self.frame.size.width/4., 0) controlPoint2:CGPointMake(120., 120)];
    
    
    CAShapeLayer *sLayer=[CAShapeLayer layer];
    sLayer.fillColor=[UIColor clearColor].CGColor;
    
    //画笔颜色
    sLayer.strokeColor=[UIColor redColor].CGColor;
    //画笔宽度
    sLayer.lineWidth=2.f;
    //路径
    sLayer.path=path.CGPath;
    sLayer.strokeStart=0.;
    sLayer.strokeEnd=1;
    [self.layer addSublayer:sLayer];
    
    //动画效果
    CABasicAnimation *slayerAnimat=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    slayerAnimat.duration=5;
    slayerAnimat.fromValue=[NSNumber numberWithFloat:0.];
    slayerAnimat.toValue=[NSNumber numberWithFloat:1.];
    
    slayerAnimat.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    slayerAnimat.fillMode=kCAFillModeForwards;
    slayerAnimat.removedOnCompletion=NO;
    [sLayer addAnimation:slayerAnimat forKey:@"path"];
    
    //    //动画效果
    CABasicAnimation *slayerAnimat1=[CABasicAnimation animationWithKeyPath:@"lineWidth"];
    slayerAnimat1.duration=5;
    slayerAnimat1.fromValue=[NSNumber numberWithFloat:0];
    slayerAnimat1.toValue=[NSNumber numberWithFloat:10];
    
    slayerAnimat1.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    slayerAnimat1.fillMode=kCAFillModeForwards;
    slayerAnimat1.removedOnCompletion=NO;
    [sLayer addAnimation:slayerAnimat1 forKey:@"path1"];

}

#pragma mark 测试
-(void)test
{
    //曲线
    UIBezierPath *path=[UIBezierPath bezierPath];
    //起点
   // [path moveToPoint:CGPointMake(20, 20)];
    [path addArcWithCenter:CGPointMake(self.frame.size.width/2., self.frame.size.height/2) radius:100 startAngle:0 endAngle:[self desgessToradio:70] clockwise:YES];
    
    
    CAShapeLayer *shaper=[CAShapeLayer layer];
    shaper.strokeColor=[UIColor redColor].CGColor;
    shaper.fillColor=[UIColor whiteColor].CGColor;
    shaper.lineWidth=5;
    shaper.lineJoin=kCALineJoinRound;
    shaper.lineCap=kCALineCapRound;
    shaper.path=path.CGPath;
    [self.layer addSublayer:shaper];
    
    
    
}


#pragma mark 弧度转化
-(double)desgessToradio:(CGFloat)des
{
    return M_PI*des/180.;
    
    
}

@end
