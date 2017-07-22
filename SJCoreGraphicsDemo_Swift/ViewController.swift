//
//  ViewController.swift
//  SJCoreGraphicsDemo_Swift
//
//  Created by SoulJa on 2017/7/22.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //sjView1
        let sjView = SJView(frame: self.view.bounds)
        sjView.backgroundColor = UIColor.white
        self.view.addSubview(sjView)
        
        //sjView2
        let sjView2 = SJView2(frame: self.view.bounds)
        sjView2.backgroundColor = UIColor.white
        self.view.addSubview(sjView2)
        
        //sjView3
        let sjView3 = SJView3(frame: self.view.bounds)
        sjView3.backgroundColor = UIColor.white
        self.view.addSubview(sjView3)
        
        //sjView4
        let sjView4 = SJView4(frame: self.view.bounds)
        sjView4.backgroundColor = UIColor.white
        self.view.addSubview(sjView4)
        
        //sjView5
        let sjView5 = SJView5(frame: self.view.bounds)
        sjView5.backgroundColor = UIColor.white
        self.view.addSubview(sjView5)
        
        //sjView6
        let sjView6 = SJView6(frame: self.view.bounds)
        sjView6.backgroundColor = UIColor.white
        self.view.addSubview(sjView6)
        
        //sjView7
        let sjView7 = SJView7(frame: self.view.bounds)
        sjView7.backgroundColor = UIColor.white
        self.view.addSubview(sjView7)
        
        //sjView8
        let sjView8 = SJView8(frame: self.view.bounds)
        sjView8.backgroundColor = UIColor.white
        self.view.addSubview(sjView8)
        
        //sjView9
        let sjView9 = SJView9(frame: self.view.bounds)
        sjView9.backgroundColor = UIColor.white
        self.view.addSubview(sjView9)
        
        //sjView10
        let sjView10 = SJView10(frame: self.view.bounds)
        sjView10.backgroundColor = UIColor.white
        self.view.addSubview(sjView10)
        
        //sjView11
        let imageView = UIImageView(image: SJView11.drawImageAtImageContext())
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

