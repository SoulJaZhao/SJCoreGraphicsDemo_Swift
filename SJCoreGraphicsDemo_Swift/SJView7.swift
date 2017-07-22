//
//  SJView7.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class SJView7: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // 绘制文字
        if let context = UIGraphicsGetCurrentContext() {
           self.drawTextWithContext(context: context)
        }
    }
    
    //MARK: 绘制文字
    func drawTextWithContext(context:CGContext) {
        let str = "使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制"
        
        let rect = CGRect(x: 20, y: 20, width: 280, height: 200)
        let font = UIFont.systemFont(ofSize: 14)
        let style = NSMutableParagraphStyle()
        style.alignment = .left
        (str as NSString).draw(in: rect, withAttributes: [NSFontAttributeName:font,NSParagraphStyleAttributeName:style,NSForegroundColorAttributeName:UIColor.red])
    }

}
