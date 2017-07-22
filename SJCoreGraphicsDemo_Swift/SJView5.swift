//
//  SJView5.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView5: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 绘制弧形
        if let context = UIGraphicsGetCurrentContext() {
            self.drawArcWithContext(context: context)
        }
    }
    
    //MARK: 绘制弧形
    func drawArcWithContext(context:CGContext) {
        /*
         添加弧形对象
         x:中心点x坐标
         y:中心点y坐标
         radius:半径
         startAngle:起始弧度
         endAngle:终止弧度
         closewise:是否逆时针绘制，0则顺时针绘制
         */
        context.addArc(center: CGPoint(x: 250, y: 200), radius: 50, startAngle: 0, endAngle: CGFloat(Double.pi/4), clockwise: true)
    }
}
