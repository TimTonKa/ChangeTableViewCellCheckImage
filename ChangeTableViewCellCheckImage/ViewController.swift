//
//  ViewController.swift
//  ChangeTableViewCellCheckImage
//
//  Created by 1134 on 2017/8/11.
//  Copyright © 2017年 1134. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")        
        tableView.allowsMultipleSelectionDuringEditing = true
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func editBtnPressed(_ sender: UIButton) {
        
        tableView.setEditing(!tableView.isEditing, animated: true)
    }
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        if cell == nil {
            cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as? TableViewCell
        }
                
        
        cell?.testLabel.text = "你好，這是測試\(indexPath.row)"
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

