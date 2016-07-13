//
//  ThirdVC.swift
//  CustomBridge
//
//  Created by TomatoPeter on 16/4/5.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit
@objc protocol ThirdProtocolProtocol{
    func printTestLog() -> Int
}

class ThirdVC: UIViewController {
    weak var myProtocol:ThirdProtocolProtocol?
    var myType:Int = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(myType);
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
