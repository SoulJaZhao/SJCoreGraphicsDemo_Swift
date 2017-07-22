//
//  SJView4.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView4: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if let context = UIGraphicsGetCurrentContext() {
            //绘制椭圆
            self.drawEllipse(context: context)
        }
    }
    
    //MARK:绘制椭圆
    func drawEllipse(context:CGContext) {
        let rect = CGRect(x: 20, y: 180, width: 100, height: 120)
        
        context.addEllipse(in: rect)
        UIColor.purple.set()
        context.drawPath(using: .fillStroke)
    }
}
