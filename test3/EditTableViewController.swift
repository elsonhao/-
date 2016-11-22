//
//  EditTableViewController.swift
//  test3
//
//  Created by 黃毓皓 on 2016/11/18.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class EditTableViewController: UITableViewController {

    var movDic = [String:String]()
    var selectIndexNumber2:Int!
    
    @IBOutlet weak var movieText: UITextField!
    @IBOutlet weak var timeText: UITextField!
    @IBOutlet weak var typeText: UITextField!
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var textviewShow: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       movieText.text = movDic["DicName"]
        timeText.text = movDic["DicTime"]
        typeText.text = movDic["DicType"]
        textviewShow.text = movDic["DicTextView"]
        imageShow.image = UIImage(named: movDic["DicName"]!)
    }
    @IBAction func EditDone(_ sender: AnyObject) {
        let controller = self.navigationController?.viewControllers[1] as! DetailTableViewController
        let firstController = self.navigationController?.viewControllers[0] as! ViewController
        movDic["DicName"] = movieText.text
        movDic["DicTime"] = timeText.text
        movDic["DicType"] = typeText.text
        movDic["DicTextView"] = textviewShow.text
        
        controller.movDic = self.movDic
        firstController.movieDic[selectIndexNumber2] = self.movDic
        
        self.navigationController?.popViewController(animated: true)
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

}
