//
//  ViewControllerTwoViewController.swift
//  MathIOS
//
//  Created by Edgar Cordova on 11/10/15.
//  Copyright © 2015 Edgar Cordova. All rights reserved.
//

import UIKit

class ViewControllerTwoViewController: UIViewController {

    @IBOutlet weak var ButtonOne: UIButton!
    
    
    
    @IBAction func ButtonOne(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("Updated", object: nil)
        
        ButtonOne.titleLabel!.text = testFunction()
        
        self.viewDidLayoutSubviews()
    }
    
    func testFunction()->String
    {
        let stringOne :String = "hello"
        
        
        return stringOne
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
