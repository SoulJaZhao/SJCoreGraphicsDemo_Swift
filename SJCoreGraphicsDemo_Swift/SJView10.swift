//
//  SJView10.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView10: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 上下文变换
        if let context = UIGraphicsGetCurrentContext() {
            self.drawImage(context: context)
        }
    }
    
    //MARK: 上下文变换
    func drawImage(context:CGContext) {
        //保存初始状态
        context.saveGState();
        
        //形变第一步：图形上下文向右平移100
        context.translateBy(x: 100, y: 0);
        
        //形变第二步：缩放0.8
        context.scaleBy(x: 0.8, y: 0.8);
        
        //形变第三步：旋转
        context.rotate(by: CGFloat(Double.pi/4));
        let img = UIImage(named: "001")
        
        //从某一点开始绘制
        img?.draw(at: CGPoint(x: 0, y: 100))
        
    }

}
