//
//  ViewController.swift
//  DemoTapBar
//
//  Created by Boss on 11/30/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
struct Student {
    var name: String?
    var age: String?
}

protocol DelegateService {
    func deosomething(serviceinfo: [Student])
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var student = [Student]()
    var delegate: DelegateService?
     var studentSave = [Student]()
    override func viewDidLoad() {
        super.viewDidLoad()
        student = [ Student(name: "luyen", age: "29"),
                    Student(name: "van", age: "29"),
                    Student(name: "anh", age: "26"),
                    Student(name: "hoang", age: "30"),
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DieuHuongCell
            cell?.nameLabel.text = student[indexPath.row].name
            cell?.ageLabel.text = student[indexPath.row].age
            cell?.buttonCell.tag = indexPath.row
        cell?.buttonCell.addTarget(self, action: #selector(checkButtonClicked(_:)), for:  .touchUpInside)
        return cell!
    }
    
   @objc func checkButtonClicked(_ sender: UIButton){
    studentSave.append(student[sender.tag])
    print(sender.tag)
    if sender.isSelected {
        sender.isSelected = false
    }else{
        sender.isSelected = true
    }
    
    }
    
    @IBAction func cancel(_ sender: Any) {
        delegate?.deosomething(serviceinfo: studentSave)
        navigationController?.popViewController(animated: true)
    }
    
}

