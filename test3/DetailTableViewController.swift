//
//  DetailTableViewController.swift
//  test3
//
//  Created by 黃毓皓 on 2016/11/18.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var movDic = [String:String]()
    var selectIndexNumber:Int!
    
    @IBOutlet weak var textviewText: UITextView!
    @IBOutlet weak var typeText: UITextField!
    @IBOutlet weak var timeText: UITextField!
    @IBOutlet weak var movieText: UITextField!
    @IBOutlet weak var movieImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        movieText.text = movDic["DicName"]
        timeText.text = movDic["DicTime"]
        typeText.text = movDic["DicType"]
        movieImage.image = UIImage(named: movDic["DicName"]!)
        textviewText.text = movDic["DicTextView"]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieText.text = movDic["DicName"]
        timeText.text = movDic["DicTime"]
        typeText.text = movDic["DicType"]
        movieImage.image = UIImage(named: movDic["DicName"]!)
        textviewText.text = movDic["DicTextView"]
    }

    @IBAction func edit(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "EditSegue", sender: nil )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! EditTableViewController
        controller.movDic = movDic
        controller.selectIndexNumber2 = selectIndexNumber
        
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
