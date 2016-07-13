//
//  FirstVC.swift
//  CustomBridge
//
//  Created by TomatoPeter on 16/3/30.
//  Copyright © 2016年 ChenJianglin. All rights reserved.
//

import UIKit
protocol SomeProtocol{
    func printSomeLog() -> Int
}

class FirstVC: UIViewController, UITableViewDelegate, UITableViewDataSource, SecondVCDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain);
        tableView.delegate = self;
        tableView.dataSource = self;
        self.view.addSubview(tableView);
        var names  = ["ddn", "kkk", "zz", "aaa"];
    
//        names.sortInPlace { str1, str2 in
//             str1 < str2
//        }
        names.sortInPlace(>);
        print(names);
        
        
        let str = {
            return "啦啦"
        }()
        print(str)
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "UITableViewCell");
        cell.textLabel?.text = String(indexPath.row);
        return cell;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = SecondVC(nibName: "SecondVC", bundle: nil);
        vc.delegate = self;
        self.presentViewController(vc, animated: true) { () -> Void in
            
        };
    }

    @IBAction func testButtonClicked(sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func printSomeLog() -> Int
    {
        return 10
    }
    func printMyLogIn() {
        print("离开的首付款客流量卡可凉快凉快了 了京东佛寺反倒是");
        print("两端的劳动劳动")
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
