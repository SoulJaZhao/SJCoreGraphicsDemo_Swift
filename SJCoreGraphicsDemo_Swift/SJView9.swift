//
//  SJView9.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView9: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 绘制渐变
        if let context = UIGraphicsGetCurrentContext() {
            self.drawLinearGradient(context: context)
            self.drawRadialGradient(context: context)
        }
    }
    
    //MARK: 绘制渐变
    func drawLinearGradient(context:CGContext) {
        //使用rgb颜色空间
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        /*
         指定渐变色
         space:颜色空间
         components:颜色数组,注意由于指定了RGB颜色空间，那么四个数组元素表示一个颜色（red、green、blue、alpha），
         如果有三个颜色则这个数组有4*3个元素
         locations:颜色所在位置（范围0~1），这个数组的个数不小于components中存放颜色的个数
         count:渐变个数，等于locations的个数
         */
        
        let compoents:[CGFloat] = [ 248.0/255.0,86.0/255.0,86.0/255.0,1,
                                    249.0/255.0,127.0/255.0,127.0/255.0,1,
                                    1.0,1.0,1.0,1.0]
        
        let locations:[CGFloat] = [0,0.4,1]
        let gradient = CGGradient(colorSpace: colorSpace, colorComponents: compoents, locations: locations, count: locations.count)
        
        /*
         绘制线性渐变
         context:图形上下文
         gradient:渐变色
         startPoint:起始位置
         endPoint:终止位置
         options:绘制方式,DrawsBeforeStartLocation 开始位置之前就进行绘制，到结束位置之后不再绘制，
         DrawsAfterEndLocation开始位置之前不进行绘制，到结束点之后继续填充
         */
        context.drawLinearGradient(gradient!, start: CGPoint(x: 0, y: 0), end: CGPoint(x: 100, y: 200), options: .drawsAfterEndLocation)
    }
    
    func drawRadialGradient(context:CGContext){
        
        //使用rgb颜色空间
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        /*
         指定渐变色
         space:颜色空间
         components:颜色数组,注意由于指定了RGB颜色空间，那么四个数组元素表示一个颜色（red、green、blue、alpha），
         如果有三个颜色则这个数组有4*3个元素
         locations:颜色所在位置（范围0~1），这个数组的个数不小于components中存放颜色的个数
         count:渐变个数，等于locations的个数
         */
        let compoents:[CGFloat] = [ 248.0/255.0,86.0/255.0,86.0/255.0,1,
                                    249.0/255.0,127.0/255.0,127.0/255.0,1,
                                    1.0,1.0,1.0,1.0]
        
        let locations:[CGFloat] = [0,0.4,1]
        let gradient = CGGradient(colorSpace: colorSpace, colorComponents: compoents, locations: locations, count: locations.count)
        /*
         绘制线性渐变
         context:图形上下文
         gradient:渐变色
         startPoint:起始位置
         startRadius:起始半径（通常为0，否则在此半径范围内容无任何填充）
         endCenter:终点位置（通常和起始点相同，否则会有偏移）
         endRadius:终点半径（也就是渐变的扩散长度）
         options:绘制方式,DrawsBeforeStartLocation 开始位置之前就进行绘制，到结束位置之后不再绘制，
         DrawsAfterEndLocation开始位置之前不进行绘制，到结束点之后继续填充
         */
        context.drawRadialGradient(gradient!, startCenter: CGPoint(x:100,y:100), startRadius: 0, endCenter: CGPoint(x:155, y:155), endRadius: 90, options: .drawsAfterEndLocation)
    }
}
