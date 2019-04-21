//
//  ViewController.swift
//  Count
//
//  Created by nagata on 4/26/17.
//  Copyright © 2017 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus() {
        
        number = number + 3
        label.text = String(number)
    }
    
    /* Check.1 マイナス機能 */
    @IBAction func minus() {
        
        number = number - 1
        label.text = String(number)
    }
    
    /* Check.2 かける・割る機能 */
    @IBAction func times() {
        
        number = number * 2
        label.text = String(number)
    }

    @IBAction func divide() {
        
        number = number / 2
        label.text = String(number)
    }

    
    

}

