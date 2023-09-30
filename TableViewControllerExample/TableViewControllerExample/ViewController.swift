//
//  ViewController.swift
//  TableViewControllerExample
//
//  Created by Anqi Guan on 9/29/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let names = ["Angie", "Tom", "Jerry", "Bill", "Angie", "Tom", "Jerry", "Bill","Angie", "Tom", "Jerry", "Bill","Angie", "Tom", "Jerry", "Bill","Angie", "Tom", "Jerry", "Bill","Angie", "Tom", "Jerry", "Bill","Angie", "Tom", "Jerry", "Bill"]
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell;
        
        
    }


}

