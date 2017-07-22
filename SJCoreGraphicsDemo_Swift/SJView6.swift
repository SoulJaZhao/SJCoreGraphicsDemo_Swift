//
//  SJView6.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView6: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 绘制贝塞尔曲线
        if let context = UIGraphicsGetCurrentContext() {
            self.drawCurve(context: context)
        }
    }
    
    //MARK: 绘制贝塞尔曲线
    func drawCurve(context:CGContext) {
        context.move(to: CGPoint(x: 20, y: 310))
        /*
         绘制二次贝塞尔曲线
         c:图形上下文
         cpx:控制点x坐标
         cpy:控制点y坐标
         x:结束点x坐标
         y:结束点y坐标
         */
        context.addQuadCurve(to: CGPoint(x: 100, y: 400), control: CGPoint(x: 230, y: 310))
        
        context.move(to: CGPoint(x: 230, y: 310))
        /*绘制三次贝塞尔曲线
         c:图形上下文
         cp1x:第一个控制点x坐标
         cp1y:第一个控制点y坐标
         cp2x:第二个控制点x坐标
         cp2y:第二个控制点y坐标
         x:结束点x坐标
         y:结束点y坐标
         */
        context.addCurve(to: CGPoint(x: 300, y: 500), control1: CGPoint(x: 100, y: 330), control2: CGPoint(x: 400, y: 410))
        
        
        UIColor.red.setStroke()
        UIColor.yellow.setFill()
        
        context.drawPath(using: .fillStroke)
    }
}
