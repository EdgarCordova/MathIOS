//
//  ViewController.swift
//  MathIOS
//
//  Created by Edgar Cordova on 11/10/15.
//  Copyright © 2015 Edgar Cordova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TestLabelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "UpdateUI:", name: "Updated", object: nil)
        
        
        
        
        TestLabelOne.text = "Hello World"
        print(TestLabelOne.text)
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func UpdateUI (notification: NSNotification)
    {
        if let nav = self.navigationController {
            nav.popViewControllerAnimated(true)
        }
        TestLabelOne.textColor = UIColor.redColor()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

