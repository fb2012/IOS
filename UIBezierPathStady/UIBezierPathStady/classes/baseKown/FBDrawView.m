//
//  FBSanjiaoView.m
//  UIBezierPathStady
//
//  Created by FBI on 16/8/2.
//  Copyright © 2016年 FBI. All rights reserved.
//

#import "FBDrawView.h"

@implementation FBDrawView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawTrianglePath];
    
    
}
#pragma mark 画虚线
-(void)drwaLineDash
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width-20, 50)];
    
    path.lineWidth=8;
    //数组中的值替换，从第一行段长度开始，其次是第一个间隙长度，其次是第二线段的长度，等等。
    CGFloat dash[]={20,10,40,60};
    //dash  是数据 值  count  是数据个数 phase   是从第几个值开始
    [path setLineDash:dash count:2 phase:0];
    UIColor *red=[UIColor redColor];
    [red set];
    [path stroke];
    
    
}
#pragma 画三角形
-(void)drawTrianglePath{

    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width-40, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width/2, self.frame.size.height)];
    [path closePath];//闭合
    path.lineWidth=8;
    //边框是虚线
    CGFloat dash[]={20,10};
    //dash  是数据 值  count  是数据个数 phase   是从第几个值开始
    [path setLineDash:dash count:2 phase:0];
    //
    //设置填充颜色
    UIColor *fillcolor=[UIColor redColor];
    [fillcolor set];
    [path fill];
    //设置画笔颜色
    UIColor *strokeColo=[UIColor blueColor];
    [strokeColo set];
    [path stroke];
    
    
}
#pragma mark 画矩形
-(void)drawRectpath{

    UIBezierPath *path=[UIBezierPath bezierPathWithRect:CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.height-40)];
    path.lineWidth=2;
    path.lineCapStyle=kCGLineCapSquare;
    //lineCapStyle属性是用来设置线条拐角帽的样式的，
    /*
    
    typedef CF_ENUM(int32_t, CGLineCap) {
        kCGLineCapButt,
        kCGLineCapRound,
        kCGLineCapSquare
    };
     其中，第一个是默认的，第二个是轻微圆角，第三个正方形。
     

     */
     
    
    
    path.lineJoinStyle=kCGLineJoinMiter;
    
    /*
     lineJoinStyle属性是用来设置两条线连结点的样式，其中也有三个选择：
     typedef CF_ENUM(int32_t, CGLineJoin) {
     kCGLineJoinMiter,
     kCGLineJoinRound,
     kCGLineJoinBevel
     };
     其中，第一个是默认的表示斜接，第二个是圆滑衔接，第三个是斜角连接。
     


     */
    //设置填充颜色
    UIColor *fillColor=[UIColor greenColor];
    [fillColor set];
    [path fill];
    // 设置画笔
    UIColor *sColo=[UIColor redColor];
    [sColo set];
    [path stroke];
    
}
#pragma mark 画圆和椭圆
/**   这里偷懒一下 ，画圆和椭圆可以使用同一个方法
 *  可以使用+ bezierPathWithOvalInRect:方法来画圆，当我们传的rect参数是一下正方形时，画出来的就是圆。那么我们要是不传正方形，那么绘制出来的就是椭圆了。
 */
-(void)drawCiclePath{

    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.width-40)];
    /*  换成 height  就成椭圆了
     UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width-40, self.frame.size.height-20)];
     */
    UIColor *fillColor=[UIColor purpleColor];
    [fillColor set];
    [path fill];
    UIColor *sColor=[UIColor lightGrayColor];
    [sColor set];
    [path stroke];
    
}


@end
