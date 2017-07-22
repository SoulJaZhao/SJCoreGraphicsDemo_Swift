//
//  SJView3.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView3: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if let context = UIGraphicsGetCurrentContext() {
            //绘制矩形
            self.drawRectWithContext(context: context)
        }
    }
    
    //MARK:画矩形
    func drawRectWithContext(context:CGContext) {
        let rect = CGRect(x: 20, y: 0, width: 280, height: 50)
        context.addRect(rect)
        UIColor.blue.set()
        context.drawPath(using: .fillStroke)
    }
}
