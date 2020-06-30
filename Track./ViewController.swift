//
//  ViewController.swift
//  Track.
//
//  Created by Christopher Greene on 5/20/20.
//  Copyright © 2020 Christopher Greene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stockArray: [InventoryList] = []


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = 60.0

        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stockArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    
}
