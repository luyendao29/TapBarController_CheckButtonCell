//
//  ThongKeVC.swift
//  DemoTapBar
//
//  Created by Boss on 11/30/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class ThongKeVC: UIViewController, DelegateService, UITableViewDataSource, UITableViewDelegate, HomeCellDelegate {
    
    @IBOutlet weak var mytableView: UITableView!
    
    var student = [Student]()
    func deosomething(serviceinfo: [Student]) {
        student += serviceinfo
        mytableView.reloadData()
        print(serviceinfo)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc  = segue.destination as? ViewController {
            vc.delegate = self
        }
        
    }
    
    // MARK: Delete Cell
    func onClickButtonTapped(cell: HomeViewCell) {
        guard let index = self.mytableView.indexPath(for: cell) else{ return }
        student.remove(at: index.row)
        mytableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? HomeViewCell
        cell?.nameLabell.text = student[indexPath.row].name
        cell?.ageLabell.text = student[indexPath.row].age
        cell?.delegate = self
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
