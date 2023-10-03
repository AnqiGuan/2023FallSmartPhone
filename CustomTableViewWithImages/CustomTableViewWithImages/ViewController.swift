//
//  ViewController.swift
//  CustomTableViewWithImages
//
//  Created by Anqi Guan on 10/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["chips", "salad", "pho", "french fries", "sushi",]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageTableViewCell
        cell.imgView.image = UIImage(named: imageNames[indexPath.row])
        cell.lblLabel.text = imageNames[indexPath.row]
        
        return cell
    }
}

