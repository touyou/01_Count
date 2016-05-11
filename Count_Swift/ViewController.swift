//
//  ViewController.swift
//  Count_Swift
//
//  Created by Master on 2015/01/19.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* -- 変数とOutletの宣言 -- */
    var number : Int = 0
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* -- プラスボタン -- */
    @IBAction func plus () {
        number = number + 1
        label.text = String(number)
        
        if number >= 10 {
            label.textColor = UIColor.blueColor()
        }else{
            label.textColor = UIColor.blackColor()
        }
    }
    
    /* -- マイナスボタン -- */
    @IBAction func minus () {
        number = number - 1
        label.text = String(number)
        
        if number >= 10 {
            label.textColor = UIColor.blueColor()
        }else{
            label.textColor = UIColor.blackColor()
        }
    }
    
    /* -- リセットボタン -- */
    @IBAction func reset () {
        number = 0
        label.text = String(number)
        
        if number >= 10 {
            label.textColor = UIColor.blueColor()
        }else{
            label.textColor = UIColor.blackColor()
        }
    }
}
