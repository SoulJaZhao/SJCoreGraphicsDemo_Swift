//
//  SJView2.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView2: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 1、 获取上下文对象
        let context = UIGraphicsGetCurrentContext()
        
        // 2、 绘制路径（相当于前面创建路径并添加路径到图形上下文两步操作）
        context?.move(to: CGPoint(x: 10, y: 30))
        context?.addLine(to: CGPoint(x: 10, y: 100))
        context?.addLine(to: CGPoint(x: 150, y: 100))
        
        //封闭路径:直接调用路径封闭方法
        context?.closePath()
        
        // 3、设置图形上下文属性
        UIColor.red.setStroke()
        UIColor.yellow.setFill()
        
        // 4、 绘制路径
        context?.drawPath(using: .fillStroke)
    }
}
