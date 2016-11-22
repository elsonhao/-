//
//  ViewController.swift
//  test3
//
//  Created by 黃毓皓 on 2016/11/15.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var contentTableView: UITableView!
    
    
    var movieDic =
       [["DicName":"電影1","DicTime":"105分鐘","DicType":"科幻","DicTextView":"電影票價格:\n電影詳細介紹"],["DicName":"電影2","DicTime":"98分鐘","DicType":"開心","DicTextView":"電影票價格:\n電影詳細介紹"]]
 
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! FirstTableViewCell
        
        let dic = self.movieDic[indexPath.row]
        cell.FirstLabel.text = dic["DicName"]
        cell.FirstImage.image = UIImage(named: dic["DicName"]!)
       
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  movieDic.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        print(" press cell ")
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath.row)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        
        
        
        self.contentTableView.reloadData()
        
    }
    @IBAction func addButton(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "addSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let testWhichSegue = sender {
            let catchindex = testWhichSegue as! Int
            
            let controller = segue.destination as! DetailTableViewController
            controller.movDic = movieDic[catchindex]
            controller.selectIndexNumber = catchindex
        }
     

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

