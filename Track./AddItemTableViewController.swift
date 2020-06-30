//
//  AddItemTableViewController.swift
//  Track.
//
//  Created by Christopher Greene on 5/28/20.
//  Copyright © 2020 Christopher Greene. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var skuField: UITextField!
    
    @IBOutlet weak var sizeField: UITextField!
    
    @IBOutlet weak var costField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
