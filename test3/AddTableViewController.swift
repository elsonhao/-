//
//  AddTableViewController.swift
//  test3
//
//  Created by 黃毓皓 on 2016/11/16.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {
   
    @IBOutlet weak var showContent: UITextView!
    @IBOutlet weak var imageNmae: UIImageView!
    @IBOutlet weak var movieType: UITextField!
    @IBOutlet weak var timeShow: UITextField!
    @IBOutlet weak var movieName: UITextField!
    
    var imageNameArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func done(_ sender: AnyObject) {
        let controller = self.navigationController?.viewControllers[0] as! ViewController
        
        let movieAddDic = ["DicName":self.movieName.text!,"DicTime":self.timeShow.text!,"DicType":self.movieType.text!,"DicTextView":self.showContent.text!]
        
       controller.movieDic.insert(movieAddDic, at: 0)
        
        
        self.navigationController?.popViewController(animated: true)
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

}
