//
//  SJView8.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView8: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 绘制图像
        if let context = UIGraphicsGetCurrentContext() {
            self.drawImage(context: context)
        }
    }

    //MARK: 绘制图像
    func drawImage(context:CGContext) {
        if let image = UIImage.init(named: "001") {
            image.draw(in: CGRect(x: 20, y: 20, width: 100, height: 80))
            
            image.draw(at: CGPoint(x: 100, y: 200))
        }
        
    }
}
