//
//  AddItemTableViewController.swift
//  Track.
//
//  Created by Christopher Greene on 5/28/20.
//  Copyright © 2020 Christopher Greene. All rights reserved.
//

import UIKit

var item: InventoryList!

class AddItemTableViewController: UITableViewController {
    
var item: InventoryList!

    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var skuField: UITextField!
    
    @IBOutlet weak var sizeField: UITextField!
    
    @IBOutlet weak var costField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if item == nil {
            item = InventoryList(name: "", sku: "", size: "", cost: "")
        }
        updateUserInterface()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        item = InventoryList(name: nameField.text, sku: skuField.text, size: sizeField.text, cost: costField.text)
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
    
    func updateUserInterface() {
        nameField.text = item.name
        sizeField.text = item.size
        skuField.text = item.sku
        costField.text = item.cost
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
