//
//  SJView11.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView11: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)

    }
    
    //MARK:添加水印
    static func drawImageAtImageContext()->UIImage {
        // 获得一个位图图形上下文
        let size = CGSize(width: 300, height: 300)
        UIGraphicsBeginImageContext(size)
        
        let img = UIImage(named: "001")
        img?.draw(in: CGRect(x: 0, y: 0, width: 300, height: 300))//注意绘图的位置是相对于画布顶点而言，不是屏幕
        
        //添加水印
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: 200, y: 178))
        context?.addLine(to: CGPoint(x: 265, y: 178))
        
        UIColor.red.setStroke()
        context?.setLineWidth(2)
        context?.drawPath(using: .fillStroke)
        
        let str = "SoulJa"
        (str as NSString).draw(in: CGRect(x: 200, y: 158, width: 100, height: 30), withAttributes: [NSForegroundColorAttributeName:UIColor.red])
        //返回绘制的新图形
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        // 关闭画布
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
